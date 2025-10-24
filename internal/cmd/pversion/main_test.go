package main

import (
	"bytes"
	"os/exec"
	"strings"
	"testing"
)

func TestPVersion(t *testing.T) {
	for _, provider := range []string{"aws", "github", "helm"} {
		t.Run(provider, func(t *testing.T) {
			cmd := exec.Command("go", "run", "./internal/cmd/pversion", provider)
			cmd.Dir = "../../.."
			var stdout bytes.Buffer
			cmd.Stdout = &stdout
			err := cmd.Run()
			if err != nil {
				t.Fatal(err)
			}
			t.Log(stdout.String())
			if strings.TrimSpace(stdout.String()) == "" {
				t.Error("no output")
			}
		})
	}
}
