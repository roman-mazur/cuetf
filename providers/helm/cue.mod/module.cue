module: "github.com/roman-mazur/cuetf/providers/helm"
language: {
	version: "v0.15.4"
}
source: {
	kind: "git"
}
deps: {
	"github.com/roman-mazur/cuetf@v0": {
		v:       "v0.2603.0-alpha.1"
		default: true
	}
}
