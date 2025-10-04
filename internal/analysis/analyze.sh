set -e

provider=$1
pkgName=$2

if [ -z "$provider" ]; then
  provider="aws"
fi
if [ -z "$pkgName" ]; then
  pkgName="useast1"
fi

dst="./out/$provider/$pkgName"
itypes="../../$provider/regions/$pkgName/itypes_gen.cue"
rm -rf "$dst"
mkdir -p "$dst"

cat >"$dst/sort_tmp.cue" <<EOF
package $pkgName

import "github.com/roman-mazur/cuetf/aws/regions"

sortedOutput: (regions.#InstaceTypesSort & {input: InstanceTypes}).output
EOF

function prepareData() {
  commit=$1
  date=$(git log -1 --date=format:'%Y-%m-%d %H:%M:%S' "$commit" | grep Date | awk '{print $2}')
  git checkout "$commit" -- "$itypes"
  cp "$itypes" "$dst/itypes_tmp.cue"
  cue export -e sortedOutput $dst > "$dst/$date.json"
}

# Export history.
commits=($(git log --pretty=format:"%h" "$itypes"))
for c in "${commits[@]}"; do
  prepareData "$c" || echo "skip $c"
done
# Clean up after export.
git checkout HEAD "$itypes"
rm "$dst"/*_tmp.*

# Import history.
cat >"$dst/schema.cue" <<EOF
package $pkgName

import "github.com/roman-mazur/cuetf/internal/analysis"

analysis.#Schema & analysis.#SummaryData
EOF

(cd "$dst" && \
  cue import --with-context -f -p "$pkgName" -l '"history":' -l 'path.Base(filename)' ./*.json)

# Clean up after import.
rm "$dst"/*.json

# Show the output summary.
echo "Analysis of changes for $provider $pkgName:"
cue eval -e summary "$dst"
