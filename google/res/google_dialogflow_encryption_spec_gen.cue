package res

import "list"

#google_dialogflow_encryption_spec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_encryption_spec")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [_, ...] & [...#encryption_spec]])
		timeouts?: #timeouts
		id?:       string

		// The location in which the encryptionSpec is to be initialized.
		location!: string
		project?:  string
	})

	#encryption_spec: close({
		// The name of customer-managed encryption key that is used to
		// secure a resource and its sub-resources.
		// If empty, the resource is secured by the default Google
		// encryption key.
		// Only the key in the same location as this resource is allowed
		// to be used for encryption.
		// Format:
		// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}
		kms_key!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
