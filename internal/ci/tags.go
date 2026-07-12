package ci

import (
	"os/exec"
	"strings"
)

// LatestGitTag runs git to retrieve the latest created tag name.
func LatestGitTag() (string, error) {
	out, err := exec.Command("git", "describe", "--tags", "--abbrev=0").Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(out)), nil
}
