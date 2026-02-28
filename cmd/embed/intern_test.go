package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestInstallInternalDepsCopiesEmbeddedAssets(t *testing.T) {
	repoRoot := t.TempDir()
	modulePath := "example.com/acme/cuetf"

	if err := InstallInternalDeps(repoRoot, modulePath); err != nil {
		t.Fatalf("InstallInternalDeps() failed: %v", err)
	}

	root := filepath.Join(repoRoot, "cue.mod", "pkg", filepath.FromSlash(modulePath), "internal")
	for _, tc := range []struct {
		path     string
		contains string
	}{
		{path: filepath.Join(root, "tf", "defs.cue"), contains: "package tf"},
		{path: filepath.Join(root, "tfjson", "structure.cue"), contains: "package tfjson"},
		{path: filepath.Join(root, "jsonschema", "transform.cue"), contains: "package jsonschema"},
	} {
		data, err := os.ReadFile(tc.path)
		if err != nil {
			t.Fatalf("expected copied file %s: %v", tc.path, err)
		}
		if !strings.Contains(string(data), tc.contains) {
			t.Errorf("file %s does not contain %q", tc.path, tc.contains)
		}
	}
}

func TestInstallInternalDepsIsIdempotent(t *testing.T) {
	repoRoot := t.TempDir()
	modulePath := "example.com/acme/cuetf"

	if err := InstallInternalDeps(repoRoot, modulePath); err != nil {
		t.Fatalf("first InstallInternalDeps() failed: %v", err)
	}
	if err := InstallInternalDeps(repoRoot, modulePath); err != nil {
		t.Fatalf("second InstallInternalDeps() failed: %v", err)
	}

	target := filepath.Join(
		repoRoot,
		"cue.mod",
		"pkg",
		filepath.FromSlash(modulePath),
		"internal",
		"jsonschema",
		"transform.cue",
	)
	if _, err := os.Stat(target); err != nil {
		t.Fatalf("expected file missing after repeated install: %v", err)
	}
}
