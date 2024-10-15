package jsonschema

import "github.com/roman-mazur/cuetf/internal/tf"

#ProviderTest: {
	importSamples: [provider=string]: [name=string]: #SchemaTransform & {
		#name:  name
		#block: tf.#block
	}

	exampleCode: string

	debug?: {
		input:  _
		output: _
	}
}
