package tf

import (
	"strings"
	"encoding/yaml"
)

// Test defines the structure of a provider schema transformation test.
#Test: {
	name: string

	_#testSample: {input: _, output: _, code: string}
	sample: _#testSample

	validation: _

	code: """
	TEST: \(name)
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
	#provider: #ProviderSchema
	#tests: [...#Test]
	output: strings.Join([ for t in #tests {t.code}], "\n")

	...
}
