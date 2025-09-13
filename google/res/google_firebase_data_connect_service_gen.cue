package res

#google_firebase_data_connect_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firebase_data_connect_service")
	close({
		// Optional. Stores small amounts of arbitrary data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. [Output only] Create time stamp.
		create_time?: string

		// The deletion policy for the database. Setting the field to
		// FORCE allows the
		// Service to be deleted even if a Schema or Connector is present.
		// By default,
		// the Service deletion will only succeed when no Schema or
		// Connectors are
		// present.
		// Possible values: DEFAULT, FORCE
		deletion_policy?: string

		// Optional. Mutable human-readable name. 63 character limit.
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
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		// [AIP-154](https://google.aip.dev/154)
		etag?: string

		// Optional. Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The region in which the service resides, e.g. "us-central1" or
		// "asia-east1".
		location!: string

		// Identifier. The relative resource name of the Firebase Data
		// Connect service, in the
		// format:
		// '''
		// projects/{project}/locations/{location}/services/{service}
		// '''
		// Note that the service ID is specific to Firebase Data Connect
		// and does not
		// correspond to any of the instance IDs of the underlying data
		// source
		// connections.
		name?:     string
		timeouts?: #timeouts

		// Output only. A field that if true, indicates that the system is
		// working update the
		// service.
		reconciling?: bool

		// Required. The ID to use for the service, which will become the
		// final component of the
		// service's resource name.
		service_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Output only. System-assigned, unique identifier.
		uid?: string

		// Output only. [Output only] Update time stamp.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
