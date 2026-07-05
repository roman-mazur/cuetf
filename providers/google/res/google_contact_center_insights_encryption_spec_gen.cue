package res

google_contact_center_insights_encryption_spec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_encryption_spec")
	close({
		timeouts?: #timeouts
		id?:       string

		// The name of customer-managed encryption key that is used to secure a resource
		// and its sub-resources.
		// If empty, the resource is secured by the default Google encryption key.
		// Only the key in the same location as this resource is allowed to be used for encryption.
		// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}
		kms_key!: string

		// The location in which the encryptionSpec is to be initialized.
		location!: string
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
