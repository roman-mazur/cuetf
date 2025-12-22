package res

#google_secret_manager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_secret_manager_secret_version")
	close({
		// The time at which the Secret was created.
		create_time?: string

		// The deletion policy for the secret version. Setting 'ABANDON'
		// allows the resource
		// to be abandoned rather than deleted. Setting 'DISABLE' allows
		// the resource to be
		// disabled rather than deleted. Default is 'DELETE'. Possible
		// values are:
		// * DELETE
		// * DISABLE
		// * ABANDON
		deletion_policy?: string

		// The time at which the Secret was destroyed. Only present if
		// state is DESTROYED.
		destroy_time?: string

		// The current state of the SecretVersion.
		enabled?: bool

		// If set to 'true', the secret data is expected to be
		// base64-encoded string and would be sent as is.
		is_secret_data_base64?: bool

		// The resource name of the SecretVersion. Format:
		// 'projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}'
		name?: string
		id?:   string

		// The ID of the project in which the resource belongs. If it is
		// not provided,
		// the provider project is used
		project?: string

		// Secret Manager secret resource
		secret!: string

		// The secret data. Must be no larger than 64KiB.
		secret_data?: string
		timeouts?:    #timeouts

		// The secret data. Must be no larger than 64KiB. For more info
		// see [updating write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		secret_data_wo?: string

		// Triggers update of secret data write-only. For more info see
		// [updating write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		secret_data_wo_version?: number

		// The version of the Secret.
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
