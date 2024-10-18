package examples

import (
	"testing"

	"rmazur.io/cuetf/internal/testtools"
)

func TestExamples(t *testing.T) {
	testtools.RunCUE(t, ".", "export")
}
