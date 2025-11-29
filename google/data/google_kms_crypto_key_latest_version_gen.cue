package data

#google_kms_crypto_key_latest_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_crypto_key_latest_version")
	close({
		algorithm?:  string
		crypto_key!: string

		// The filter argument is used to add a filter query parameter
		// that limits which type of cryptoKeyVersion is retrieved as the
		// latest by the data source: ?filter={{filter}}. When no value
		// is provided there is no filtering.
		//
		// Example filter values if filtering on state.
		//
		// * "state:ENABLED" will retrieve the latest cryptoKeyVersion
		// that has the state "ENABLED".
		//
		// [See the documentation about using
		// filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
		filter?:           string
		id?:               string
		name?:             string
		protection_level?: string
		public_key?: [...close({
			algorithm?: string
			pem?:       string
		})]
		state?:   string
		version?: number
	})
}
