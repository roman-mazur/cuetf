package res

import "list"

#google_eventarc_message_bus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_eventarc_message_bus")
	close({
		// Optional. Resource annotations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. The creation time.
		create_time?: string

		// Optional. Resource name of a KMS crypto key (managed by the
		// user) used to
		// encrypt/decrypt their event data.
		//
		// It must match the pattern
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		crypto_key_name?: string

		// Optional. Resource display name.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only. This checksum is computed by the server based on
		// the value of other
		// fields, and might be sent only on update and delete requests to
		// ensure that
		// the client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Optional. Resource labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Required. The user-provided ID to be assigned to the
		// MessageBus. It should match the
		// format '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'.
		message_bus_id!: string
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		timeouts?: #timeouts

		// Identifier. Resource name of the form
		// projects/{project}/locations/{location}/messageBuses/{message_bus}
		name?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Output only. Server assigned unique identifier for the channel.
		// The value is a UUID4
		// string and guaranteed to remain unchanged until the resource is
		// deleted.
		uid?: string

		// Output only. The last-modified time.
		update_time?: string
	})

	#logging_config: close({
		// Optional. The minimum severity of logs that will be sent to
		// Stackdriver/Platform
		// Telemetry. Logs at severitiy ≥ this value will be sent, unless
		// it is NONE. Possible values: ["NONE", "DEBUG", "INFO",
		// "NOTICE", "WARNING", "ERROR", "CRITICAL", "ALERT",
		// "EMERGENCY"]
		log_severity?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
