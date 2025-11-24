package data

#google_kms_crypto_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_crypto_keys")
	close({
		// The filter argument is used to add a filter query parameter
		// that limits which keys are retrieved by the data source:
		// ?filter={{filter}}.
		// Example values:
		//
		// * "name:my-key-" will retrieve keys that contain "my-key-"
		// anywhere in their name. Note: names take the form
		// projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}.
		// *
		// "name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1"
		// will only retrieve a key with that exact name.
		//
		// [See the documentation about using
		// filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
		filter?: string
		id?:     string

		// The key ring that the keys belongs to. Format:
		// 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.
		key_ring!: string

		// A list of all the retrieved keys from the provided key ring
		keys?: [...close({
			crypto_key_backend?:         string
			destroy_scheduled_duration?: string
			effective_labels?: [string]: string
			id?:          string
			import_only?: bool
			key_ring?:    string
			labels?: [string]: string
			name?: string
			primary?: [...close({
				name?:  string
				state?: string
			})]
			purpose?:                       string
			rotation_period?:               string
			skip_initial_version_creation?: bool
			terraform_labels?: [string]: string
			version_template?: [...close({
				algorithm?:        string
				protection_level?: string
			})]
		})]
	})
}
