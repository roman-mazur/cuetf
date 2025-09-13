package data

#google_kms_crypto_key_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_crypto_key_versions")
	close({
		// The filter argument is used to add a filter query parameter
		// that limits which cryptoKeyVersions are retrieved by the data
		// source: ?filter={{filter}}.
		// Example values:
		//
		// * "name:my-cryptokey-version-" will retrieve cryptoKeyVersions
		// that contain "my-key-" anywhere in their name. Note: names
		// take the form
		// projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}/cryptoKeyVersions/{{cryptoKeyVersion}}.
		// *
		// "name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1/cryptoKeyVersions/1"
		// will only retrieve a key with that exact name.
		//
		// [See the documentation about using
		// filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
		filter?: string

		// A list of all the retrieved cryptoKeyVersions from the provided
		// crypto key
		versions?: [...close({
			algorithm?:        string
			crypto_key?:       string
			id?:               string
			name?:             string
			protection_level?: string
			public_key?: [...close({
				algorithm?: string
				pem?:       string
			})]
			state?:   string
			version?: number
		})]
		crypto_key!: string
		id?:         string
		public_key?: [...close({
			algorithm?: string
			pem?:       string
		})]
	})
}
