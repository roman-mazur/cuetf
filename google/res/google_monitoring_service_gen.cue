package res

import "list"

#google_monitoring_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_monitoring_service")
	close({
		// Name used for UI elements listing this Service.
		display_name?: string
		id?:           string

		// The full resource name for this service. The syntax is:
		// projects/[PROJECT_ID]/services/[SERVICE_ID].
		name?:    string
		project?: string
		basic_service?: matchN(1, [#basic_service, list.MaxItems(1) & [...#basic_service]])

		// An optional service ID to use. If not given, the server will
		// generate a
		// service ID.
		service_id!: string
		timeouts?:   #timeouts

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

	#basic_service: close({
		// Labels that specify the resource that emits the monitoring data
		// which is used for SLO reporting of this 'Service'.
		service_labels?: [string]: string

		// The type of service that this basic service defines, e.g.
		// APP_ENGINE service type
		service_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
