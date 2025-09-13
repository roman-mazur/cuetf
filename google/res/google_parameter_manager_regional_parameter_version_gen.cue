package res

#google_parameter_manager_regional_parameter_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_parameter_manager_regional_parameter_version")
	close({
		// The time at which the Regional Parameter Version was created.
		create_time?: string

		// The current state of Regional Parameter Version. This field is
		// only applicable for updating Regional Parameter Version.
		disabled?: bool

		// The resource name of the Cloud KMS CryptoKeyVersion used to
		// decrypt regional parameter version payload. Format
		// 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}'
		kms_key_version?: string
		id?:              string

		// Location of Parameter Manager Regional parameter resource.
		location?: string

		// The resource name of the Regional Parameter Version. Format:
		// 'projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}'
		name?: string

		// Parameter Manager Regional Parameter resource.
		parameter!: string
		timeouts?:  #timeouts

		// The Regional Parameter data.
		parameter_data!: string

		// Version ID of the Regional Parameter Version Resource. This
		// must be unique within the Regional Parameter.
		parameter_version_id!: string

		// The time at which the Regional Parameter Version was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
