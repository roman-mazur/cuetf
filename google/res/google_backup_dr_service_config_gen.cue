package res

#google_backup_dr_service_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_service_config")
	close({
		id?: string

		// The location in which the Service config is to be initialized.
		location!: string
		project?:  string

		// The resource type to which the default service config will be
		// applied.
		resource_type!: string
		timeouts?:      #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
