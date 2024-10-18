package testtools

import (
	"os/exec"
	"testing"
)

// RunCUE executes CUE command line tool via RunCommand.
func RunCUE(t *testing.T, dir string, args ...string) {
	t.Helper()
	cmd := exec.Command("cue", args...)
	cmd.Dir = dir
	RunCommand(t, cmd)
}

// RunCommand executes the given command failing test if the command fails and logging the output.
func RunCommand(t *testing.T, cmd *exec.Cmd) {
	t.Helper()
	out, err := cmd.CombinedOutput()
	if len(out) > 0 {
		t.Log(string(out))
	}
	if err != nil {
		t.Fatal(err)
	}
}
