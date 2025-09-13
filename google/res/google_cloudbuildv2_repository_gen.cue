package res

#google_cloudbuildv2_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudbuildv2_repository")
	close({
		// Allows clients to store small amounts of arbitrary data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Server assigned timestamp for when the connection
		// was created.
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields, and may be sent on update and delete requests to
		// ensure the client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// The location for the resource
		location?: string

		// Name of the repository.
		name!: string

		// The connection for the resource
		parent_connection!: string
		timeouts?:          #timeouts
		project?:           string

		// Required. Git Clone HTTPS URI.
		remote_uri!: string

		// Output only. Server assigned timestamp for when the connection
		// was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
