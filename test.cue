package cuetf

import (
	"strings"
	"encoding/yaml"
)

// Test defines the structure of a provider schema transformation test.
#Test: {
	_#testSample: {input: _, output: _, code: string}
	sample: _#testSample

	validation: _

	code: """
	=== INPUT ===
	\(yaml.Marshal(sample.input))
	=== CODE ===
	\(sample.code)
	=== VALIDATION ===
	\(yaml.Marshal(validation))
	"""
}

// TestSuite defines the structure of a test.cue file.
#TestSuite: {
	#provider: #TerraformSchema
	#tests: [...#Test]
	output: strings.Join([ for t in #tests {t.code}], "\n")

	...
}
