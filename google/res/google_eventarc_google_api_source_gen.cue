package res

import "list"

#google_eventarc_google_api_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_eventarc_google_api_source")
	close({
		// Resource annotations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The creation time.
		create_time?: string

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt their event data.
		//
		// It must match the pattern
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		crypto_key_name?: string

		// Destination is the message bus that the GoogleApiSource is
		// delivering to.
		// It must be point to the full resource name of a MessageBus.
		// Format:
		// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
		destination!: string

		// Resource display name.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and might be sent only on update and delete requests to
		// ensure that
		// the client has an up-to-date value before proceeding.
		etag?: string

		// The user-provided ID to be assigned to the GoogleApiSource. It
		// should match
		// the format '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'.
		google_api_source_id!: string
		id?:                   string

		// Resource labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		timeouts?: #timeouts

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Resource name of the form
		// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server assigned unique identifier for the channel. The value is
		// a UUID4
		// string and guaranteed to remain unchanged until the resource is
		// deleted.
		uid?: string

		// The last-modified time.
		update_time?: string
	})

	#logging_config: close({
		// The minimum severity of logs that will be sent to
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
