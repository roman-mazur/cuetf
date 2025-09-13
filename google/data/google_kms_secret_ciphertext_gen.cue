package data

#google_kms_secret_ciphertext: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_secret_ciphertext")
	close({
		ciphertext?: string
		crypto_key!: string
		id?:         string
		plaintext!:  string
	})
}
