module: "github.com/roman-mazur/cuetf"
language: {
	version: "v0.9.0"
}
source: {
	kind: "git"
}
deps: {
	"cue.dev/x/githubactions@v0": {
		v:       "v0.2.0"
		default: true
	}
}
