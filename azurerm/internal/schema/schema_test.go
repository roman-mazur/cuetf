package schema

import (
	"testing"

	"rmazur.io/cuetf/internal/testtools"
)

func TestValidate(t *testing.T) {
	testtools.RunCUE(t, ".", "vet")
}
