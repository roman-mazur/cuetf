package embedassets

import (
	"testing"

	"github.com/rogpeppe/go-internal/testscript"
)

func TestProvider(t *testing.T) {
	testscript.Run(t, testscript.Params{
		Dir: "testdata",
	})
}
