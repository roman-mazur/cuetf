package res

#google_logging_organization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_logging_organization_settings")
	close({
		// If set to true, the _Default sink in newly created projects and
		// folders will created in a disabled state. This can be used to
		// automatically disable log storage if there is already an
		// aggregated sink configured in the hierarchy. The _Default sink
		// can be re-enabled manually if needed.
		disable_default_sink?: bool

		// The resource name for the configured Cloud KMS key.
		kms_key_name?: string
		id?:           string

		// The service account that will be used by the Log Router to
		// access your Cloud KMS key.
		kms_service_account_id?: string

		// The service account for the given container. Sinks use this
		// service account as their writerIdentity if no custom service
		// account is provided.
		logging_service_account_id?: string

		// The resource name of the settings.
		name?: string

		// The organization for which to retrieve or configure settings.
		organization!: string

		// The storage location that Cloud Logging will use to create new
		// resources when a location is needed but not explicitly
		// provided.
		storage_location?: string
		timeouts?:         #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
