// Command monthly-release performs the following actions:
// - checks if the HEAD of the git repo is different from the latest tag,
// - tags the HEAD using the current month (in a form of <major>.YYMM.0),
// - published the cue module with this new version.
package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
	"time"
)

func main() {
	// 1. Check HEAD and latest tag
	headHash, err := runCmd("git", "rev-parse", "HEAD")
	if err != nil {
		log.Fatalf("❌ Failed to get HEAD hash: %v", err)
	}

	latestTag, _ := runCmd("git", "describe", "--tags", "--abbrev=0")
	var latestTagHash string
	if latestTag != "" {
		latestTagHash, _ = runCmd("git", "rev-list", "-n", "1", latestTag)
	}

	if headHash == latestTagHash && latestTag != "" {
		fmt.Println("✅ HEAD is already at the latest tag. Nothing to do.")
		os.Exit(0)
	}

	// 2. Generate and Create the tag locally
	newTag := GenerateVersion(latestTag, time.Now())
	fmt.Printf("🚀 Tagging HEAD with %s...\n", newTag)
	if err := CreateTag(newTag); err != nil {
		log.Fatalf("❌ Failed to create git tag %s: %v", newTag, err)
	}

	// 3. Push the tag to origin
	fmt.Printf("⬆️ Pushing tag %s to origin...\n", newTag)
	if err := PushTag(newTag); err != nil {
		log.Fatalf("❌ Failed to push tag to origin: %v", err)
	}

	// 4. Publish the CUE module
	fmt.Printf("📦 Publishing CUE module version %s...\n", newTag)
	if _, err := runCmd("cue", "mod", "publish", newTag); err != nil {
		log.Fatalf("❌ Failed to publish CUE module: %v", err)
	}

	fmt.Printf("🎉 Successfully released: %s\n", newTag)
}

func GenerateVersion(latestTag string, now time.Time) string {
	major := "v0"
	if latestTag != "" {
		major = strings.Split(latestTag, ".")[0]
	}
	return fmt.Sprintf("%s.%s.0", major, now.Format("0601"))
}

func CreateTag(tag string) error {
	_, err := runCmd("git", "tag", tag)
	return err
}

// PushTag pushes a specific tag to the 'origin' remote.
func PushTag(tag string) error {
	_, err := runCmd("git", "push", "origin", tag)
	return err
}

func runCmd(name string, args ...string) (string, error) {
	cmd := exec.Command(name, args...)
	out, err := cmd.CombinedOutput()
	return strings.TrimSpace(string(out)), err
}
