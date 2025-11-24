package res

#google_eventarc_enrollment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_eventarc_enrollment")
	close({
		// Resource annotations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// A CEL expression identifying which messages this enrollment
		// applies to.
		cel_match!: string

		// The creation time.
		create_time?: string

		// Destination is the Pipeline that the Enrollment is delivering
		// to. It must
		// point to the full resource name of a Pipeline. Format:
		// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
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

		// The user-provided ID to be assigned to the Enrollment. It
		// should match the
		// format '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'.
		enrollment_id!: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and might be sent only on update and delete requests to
		// ensure that
		// the client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Resource labels.
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
		timeouts?: #timeouts

		// Resource name of the message bus identifying the source of the
		// messages. It
		// matches the form
		// projects/{project}/locations/{location}/messageBuses/{messageBus}.
		message_bus!: string

		// Resource name of the form
		// projects/{project}/locations/{location}/enrollments/{enrollment}
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

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
