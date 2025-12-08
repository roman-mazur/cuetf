package data

#google_kms_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_secret")
	close({
		additional_authenticated_data?: string
		ciphertext!:                    string
		crypto_key!:                    string
		id?:                            string
		plaintext?:                     string
	})
}
