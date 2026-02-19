package main

import (
	"os"
	"os/exec"
	"testing"
	"time"
)

func TestGenerateVersion(t *testing.T) {
	// Fixed time for consistent testing: Feb 15, 2026
	mockTime := time.Date(2026, time.February, 15, 0, 0, 0, 0, time.UTC)

	tests := []struct {
		name      string
		latestTag string
		expected  string
	}{
		{
			name:      "Standard v1 tag",
			latestTag: "v1.2310.0",
			expected:  "v1.2602.0",
		},
		{
			name:      "Standard v2 tag",
			latestTag: "v2.2401.0",
			expected:  "v2.2602.0",
		},
		{
			name:      "No previous tags",
			latestTag: "",
			expected:  "v0.2602.0",
		},
		{
			name:      "Unconventional tag format",
			latestTag: "release.v3", // Splitting by "." yields "release" as major
			expected:  "release.2602.0",
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			result := GenerateVersion(tc.latestTag, mockTime)
			if result != tc.expected {
				t.Errorf("GenerateVersion(%q) = %q; want %q", tc.latestTag, result, tc.expected)
			}
		})
	}
}

func TestCreateTag(t *testing.T) {
	// 1. Setup a temporary directory to act as a git repository
	tempDir := t.TempDir()

	// Store original working directory and restore it after test
	originalWd, err := os.Getwd()
	if err != nil {
		t.Fatalf("Failed to get current working directory: %v", err)
	}
	defer os.Chdir(originalWd)

	// Change into temp directory
	if err := os.Chdir(tempDir); err != nil {
		t.Fatalf("Failed to change into temp directory: %v", err)
	}

	// 2. Initialize a dummy git repo and create a starting commit
	runTestGitCmd(t, "init")
	runTestGitCmd(t, "config", "user.email", "test@example.com")
	runTestGitCmd(t, "config", "user.name", "Test User")
	runTestGitCmd(t, "commit", "--allow-empty", "-m", "Initial commit")

	testTag := "v1.2602.0"

	// 3. Test successfully creating a tag
	err = CreateTag(testTag)
	if err != nil {
		t.Fatalf("Expected CreateTag to succeed, but it failed: %v", err)
	}

	// 4. Test failing when the tag already exists (triggers non-zero exit in main script)
	err = CreateTag(testTag)
	if err == nil {
		t.Fatalf("Expected CreateTag to fail because the tag already exists, but it succeeded")
	}
}

// runTestGitCmd is a strictly test-scoped helper to execute git setup commands safely.
func runTestGitCmd(t *testing.T, args ...string) {
	t.Helper()
	cmd := exec.Command("git", args...)
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("Failed to run 'git %v': %v\nOutput: %s", args, err, out)
	}
}
