package embedassets

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"testing"

	"github.com/rogpeppe/go-internal/testscript"
	"rmazur.io/cuetf/internal/ci"
)

func TestProvider(t *testing.T) {
	testscript.Run(t, testscript.Params{
		Dir: "testdata",
		Setup: func(env *testscript.Env) error {
			latestTag, err := ci.LatestGitTag()
			if err != nil {
				return fmt.Errorf("could not get latest version: %w", err)
			}
			cueVersion, err := retrieveCueVersion()
			if err != nil {
				return fmt.Errorf("could not get CUE version: %w", err)
			}
			env.Setenv("CUE_VERSION", cueVersion)
			env.Setenv("CUETF_VERSION", latestTag)
			return nil
		},
	})
}

func retrieveCueVersion() (string, error) {
	f, err := os.Open("../go.mod")
	if err != nil {
		return "", fmt.Errorf("could not open go.mod: %w", err)
	}
	defer f.Close()

	const path = "cuelang.org/go"

	scanner := bufio.NewScanner(f)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		parts := strings.Fields(strings.TrimSpace(scanner.Text()))
		if len(parts) != 2 {
			continue
		}
		if parts[0] == path {
			return parts[1], nil
		}
	}

	return "", fmt.Errorf("could not find %q", path)
}
