package ci

import (
	"testing"

	"rmazur.io/cuetf/internal/testtools"
)

func TestDefinitions(t *testing.T) {
	testtools.RunCUE(t, ".", "export")
}
