package res

import "list"

#google_monitoring_custom_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_monitoring_custom_service")
	close({
		// Name used for UI elements listing this Service.
		display_name?: string

		// The full resource name for this service. The syntax is:
		// projects/[PROJECT_ID]/services/[SERVICE_ID].
		name?: string
		id?:   string

		// An optional service ID to use. If not given, the server will
		// generate a
		// service ID.
		service_id?: string

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
		project?: string
		telemetry?: matchN(1, [#telemetry, list.MaxItems(1) & [...#telemetry]])
		timeouts?: #timeouts
	})

	#telemetry: close({
		// The full name of the resource that defines this service.
		// Formatted as described in
		// https://cloud.google.com/apis/design/resource_names.
		resource_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
