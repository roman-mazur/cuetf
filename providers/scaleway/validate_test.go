package scaleway

import (
	"testing"

	"rmazur.io/cuetf/internal/testtools"
)

func TestModule(t *testing.T) {
	testtools.RunCUE(t, ".", "def")
}
