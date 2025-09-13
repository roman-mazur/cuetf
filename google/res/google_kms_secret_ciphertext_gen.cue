package res

#google_kms_secret_ciphertext: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_secret_ciphertext")
	close({
		// The additional authenticated data used for integrity checks
		// during encryption and decryption.
		additional_authenticated_data?: string

		// Contains the result of encrypting the provided plaintext,
		// encoded in base64.
		ciphertext?: string

		// The full name of the CryptoKey that will be used to encrypt the
		// provided plaintext.
		// Format:
		// ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}''
		crypto_key!: string
		timeouts?:   #timeouts
		id?:         string

		// The plaintext to be encrypted.
		plaintext!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
