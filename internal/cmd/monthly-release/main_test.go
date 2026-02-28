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
		{
			name:      "Current month increments patch",
			latestTag: "v2.2602.0",
			expected:  "v2.2602.1",
		},
		{
			name:      "Current month increments existing patch",
			latestTag: "v2.2602.7",
			expected:  "v2.2602.8",
		},
		{
			name:      "Current month malformed patch falls back to zero",
			latestTag: "v2.2602.x",
			expected:  "v2.2602.0",
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

func TestIncrementPatch(t *testing.T) {
	tests := []struct {
		in       string
		expected string
	}{
		{in: "v1.2602.0", expected: "v1.2602.1"},
		{in: "v1.2602.9", expected: "v1.2602.10"},
		{in: "invalid", expected: "invalid"},
		{in: "v1.2602.x", expected: "v1.2602.x"},
	}
	for _, tc := range tests {
		if got := IncrementPatch(tc.in); got != tc.expected {
			t.Fatalf("IncrementPatch(%q) = %q; want %q", tc.in, got, tc.expected)
		}
	}
}

func TestCreateTag(t *testing.T) {
	setupTestGitRepo(t)

	testTag := "v1.2602.0"

	// 3. Test successfully creating a tag
	err := CreateTag(testTag)
	if err != nil {
		t.Fatalf("Expected CreateTag to succeed, but it failed: %v", err)
	}

	// 4. Test failing when the tag already exists (triggers non-zero exit in main script)
	err = CreateTag(testTag)
	if err == nil {
		t.Fatalf("Expected CreateTag to fail because the tag already exists, but it succeeded")
	}
}

func TestTagExists(t *testing.T) {
	setupTestGitRepo(t)

	exists, err := TagExists("v1.2602.0")
	if err != nil {
		t.Fatalf("TagExists returned unexpected error for missing tag: %v", err)
	}
	if exists {
		t.Fatalf("TagExists should return false for missing tag")
	}

	runTestGitCmd(t, "tag", "v1.2602.0")
	exists, err = TagExists("v1.2602.0")
	if err != nil {
		t.Fatalf("TagExists returned unexpected error for existing tag: %v", err)
	}
	if !exists {
		t.Fatalf("TagExists should return true for existing tag")
	}
}

func setupTestGitRepo(t *testing.T) {
	t.Helper()

	tempDir := t.TempDir()
	originalWd, err := os.Getwd()
	if err != nil {
		t.Fatalf("Failed to get current working directory: %v", err)
	}
	t.Cleanup(func() {
		_ = os.Chdir(originalWd)
	})

	if err := os.Chdir(tempDir); err != nil {
		t.Fatalf("Failed to change into temp directory: %v", err)
	}

	runTestGitCmd(t, "init")
	runTestGitCmd(t, "config", "user.email", "test@example.com")
	runTestGitCmd(t, "config", "user.name", "Test User")
	runTestGitCmd(t, "commit", "--allow-empty", "-m", "Initial commit")
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
