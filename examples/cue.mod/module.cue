module: "github.com/roman-mazur/cuetf/examples"
language: {
	version: "v0.15.4"
}
deps: {
	"github.com/roman-mazur/cuetf/providers/aws@v0": {
		v:       "v0.2604.0"
		default: true
	}
	"github.com/roman-mazur/cuetf/providers/google@v0": {
		v:       "v0.2604.0"
		default: true
	}
	"github.com/roman-mazur/cuetf@v0": {
		v:       "v0.2604.0"
		default: true
	}
}
