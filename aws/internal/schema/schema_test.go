package schema

import (
	"testing"

	"rmazur.io/cuetf/internal/testtools"
)

func TestValidate(t *testing.T) {
	t.Skip("skipped due to performance reasons")
	testtools.RunCUE(t, ".", "vet")
}
