package data

#google_monitoring_app_engine_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_monitoring_app_engine_service")
	close({
		// Name used for UI elements listing this Service.
		display_name?: string
		id?:           string

		// The ID of the App Engine module underlying this service.
		// Corresponds to the 'moduleId' resource label for a 'gae_app'
		// monitored resource(see
		// https://cloud.google.com/monitoring/api/resources#tag_gae_app)
		module_id!: string

		// The full resource name for this service. The syntax is:
		// projects/[PROJECT_ID]/services/[SERVICE_ID].
		name?: string

		// An optional service ID to use. If not given, the server will
		// generate a
		// service ID.
		service_id?: string
		project?:    string

		// Configuration for how to query telemetry on a Service.
		telemetry?: [...close({
			resource_name?: string
		})]

		// Labels which have been used to annotate the service. Label keys
		// must start
		// with a letter. Label keys and values may contain lowercase
		// letters,
		// numbers, underscores, and dashes. Label keys and values have a
		// maximum
		// length of 63 characters, and must be less than 128 bytes in
		// size. Up to 64
		// label entries may be stored. For labels which do not have a
		// semantic value,
		// the empty string may be supplied for the label value.
		user_labels?: [string]: string
	})
}
