package res

#google_kms_key_ring_import_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_key_ring_import_job")
	close({
		// Statement that was generated and signed by the key creator (for
		// example, an HSM) at key creation time.
		// Use this statement to verify attributes of the key as stored on
		// the HSM, independently of Google.
		// Only present if the chosen ImportMethod is one with a
		// protection level of HSM.
		attestation?: [...close({
			content?: string
			format?:  string
		})]

		// The time at which this resource is scheduled for expiration and
		// can no longer be used.
		// This is in RFC3339 text format.
		expire_time?: string

		// It must be unique within a KeyRing and match the regular
		// expression [a-zA-Z0-9_-]{1,63}
		import_job_id!: string
		id?:            string

		// The wrapping method to be used for incoming key material.
		// Possible values: ["RSA_OAEP_3072_SHA1_AES_256",
		// "RSA_OAEP_4096_SHA1_AES_256", "RSA_OAEP_3072_SHA256_AES_256",
		// "RSA_OAEP_4096_SHA256_AES_256", "RSA_OAEP_3072_SHA256",
		// "RSA_OAEP_4096_SHA256"]
		import_method!: string

		// The KeyRing that this import job belongs to.
		// Format:
		// ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''.
		key_ring!: string

		// The resource name for this ImportJob in the format
		// projects/*/locations/*/keyRings/*/importJobs/*.
		name?:     string
		timeouts?: #timeouts

		// The protection level of the ImportJob. This must match the
		// protectionLevel of the
		// versionTemplate on the CryptoKey you attempt to import into.
		// Possible values: ["SOFTWARE", "HSM", "EXTERNAL"]
		protection_level!: string

		// The public key with which to wrap key material prior to import.
		// Only returned if state is 'ACTIVE'.
		public_key?: [...close({
			pem?: string
		})]

		// The current state of the ImportJob, indicating if it can be
		// used.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
