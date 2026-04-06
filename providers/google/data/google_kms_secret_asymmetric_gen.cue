package data

#google_kms_secret_asymmetric: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_secret_asymmetric")
	close({
		// The public key encrypted ciphertext in base64 encoding
		ciphertext!: string

		// The crc32 checksum of the ciphertext, hexadecimal encoding. If
		// not specified, it will be computed
		crc32?: string

		// The fully qualified KMS crypto key version name
		crypto_key_version!: string
		id?:                 string
		plaintext?:          string
	})
}
