package main

import (
	"io"
	"io/fs"
	"os"
	"path/filepath"

	embedassets "rmazur.io/cuetf/internal"
)

func InstallInternalDeps(repoRoot string, modulePath string) error {
	dstBase := filepath.Join(repoRoot, "cue.mod", "pkg", filepath.FromSlash(modulePath), "internal")
	return copyCueDir(embedassets.InternalCUE, ".", dstBase)
}

func copyCueDir(srcFS fs.FS, srcDir, dst string) error {
	return fs.WalkDir(srcFS, srcDir, func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if d.IsDir() || filepath.Ext(path) != ".cue" {
			return nil
		}
		rel, err := filepath.Rel(srcDir, path)
		if err != nil {
			return err
		}
		dstPath := filepath.Join(dst, rel)
		if err := os.MkdirAll(filepath.Dir(dstPath), 0777); err != nil {
			return err
		}
		return copyFileFromFS(srcFS, path, dstPath)
	})
}

func copyFileFromFS(srcFS fs.FS, src, dst string) (err error) {
	in, err := srcFS.Open(src)
	if err != nil {
		return err
	}
	defer func() { _ = in.Close() }()

	out, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer func() {
		closeError := out.Close()
		if err == nil && closeError != nil {
			err = closeError
		}
	}()

	_, err = io.Copy(out, in)
	return
}
