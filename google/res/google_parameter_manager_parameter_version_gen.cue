package res

#google_parameter_manager_parameter_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_parameter_manager_parameter_version")
	close({
		// The time at which the Parameter Version was created.
		create_time?: string

		// The current state of Parameter Version. This field is only
		// applicable for updating Parameter Version.
		disabled?: bool

		// The resource name of the Cloud KMS CryptoKeyVersion used to
		// decrypt parameter version payload. Format
		// 'projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}'
		kms_key_version?: string

		// The resource name of the Parameter Version. Format:
		// 'projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}'
		name?: string

		// Parameter Manager Parameter resource.
		parameter!: string
		id?:        string

		// The Parameter data.
		parameter_data!: string

		// Version ID of the Parameter Version Resource. This must be
		// unique within the Parameter.
		parameter_version_id!: string

		// The time at which the Parameter Version was updated.
		update_time?: string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
