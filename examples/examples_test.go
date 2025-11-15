package examples

import (
	"bytes"
	"encoding/json"
	"testing"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
	"rmazur.io/cuetf/internal/testtools"
)

func TestExamples(t *testing.T) {
	testtools.RunCUE(t, ".", "export")
}

func TestProfile(t *testing.T) {
	ctx := cuecontext.New()
	instns := load.Instances([]string{"."}, nil)
	t.Log("instances count:", len(instns))
	v := ctx.BuildInstance(instns[0])
	if err := v.Err(); err != nil {
		t.Fatal(err)
	}

	allInfra := v.LookupPath(cue.MakePath(cue.Str("allInfra")))
	if err := allInfra.Err(); err != nil {
		t.Fatal(err)
	}
	var buf bytes.Buffer
	if err := json.NewEncoder(&buf).Encode(allInfra); err != nil {
		t.Fatal(err)
	}
	t.Log(buf.String())
}
