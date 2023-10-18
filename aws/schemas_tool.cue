package aws

import (
	"tool/file"

	"rmazur.io/cuetf/aws/internal"
)

command: "make-schemas": {
	for group, data in internal.output {
		if group != "root" {
			"\(group)-mkdir": file.Mkdir & {
				path: group
			}
		}

		for name, code in data {
			"\(group)-\(name)": file.Create & {
				if group != "root" {
					filename: "\(group)/\(name).cue"
					contents: """
					package \(group)
					\(code)
					"""
				}

				if group == "root" {
					filename: "\(name).cue"
					contents: """
					package aws
					\(code)
					"""
				}
			}
		}
	}
}
