package res

#google_secret_manager_regional_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secret_manager_regional_secret_version")
	close({
		// The time at which the regional secret version was created.
		create_time?: string

		// The customer-managed encryption configuration of the regional
		// secret.
		customer_managed_encryption?: [...close({
			kms_key_version_name?: string
		})]

		// The deletion policy for the regional secret version. Setting
		// 'ABANDON' allows the resource
		// to be abandoned rather than deleted. Setting 'DISABLE' allows
		// the resource to be
		// disabled rather than deleted. Default is 'DELETE'. Possible
		// values are:
		// * DELETE
		// * DISABLE
		// * ABANDON
		deletion_policy?: string

		// The time at which the regional secret version was destroyed.
		// Only present if state is DESTROYED.
		destroy_time?: string

		// The current state of the regional secret version.
		enabled?: bool

		// If set to 'true', the secret data is expected to be
		// base64-encoded string and would be sent as is.
		is_secret_data_base64?: bool
		id?:                    string

		// Location of Secret Manager regional secret resource.
		location?: string
		timeouts?: #timeouts

		// The resource name of the regional secret version. Format:
		// 'projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}'
		name?: string

		// Secret Manager regional secret resource.
		secret!: string

		// The secret data. Must be no larger than 64KiB.
		secret_data!: string

		// The version of the Regional Secret.
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
