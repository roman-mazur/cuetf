package data

#google_kms_crypto_key_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_crypto_key_version")
	close({
		algorithm?:        string
		crypto_key!:       string
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
