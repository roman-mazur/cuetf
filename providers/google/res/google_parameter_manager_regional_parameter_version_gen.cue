package res

google_parameter_manager_regional_parameter_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_parameter_manager_regional_parameter_version")
	close({
		timeouts?: #timeouts

		// The time at which the Regional Parameter Version was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The current state of Regional Parameter Version. This field is only
		// applicable for updating Regional Parameter Version.
		disabled?: bool
		id?:       string

		// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional
		// parameter version payload. Format
		// 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}'
		kms_key_version?: string

		// Location of Parameter Manager Regional parameter resource.
		location?: string

		// The resource name of the Regional Parameter Version. Format:
		// 'projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}'
		name?: string

		// Parameter Manager Regional Parameter resource.
		parameter!: string

		// The Regional Parameter data.
		parameter_data!: string

		// Version ID of the Regional Parameter Version Resource. This must be unique
		// within the Regional Parameter.
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
