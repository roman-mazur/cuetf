package res

#google_developer_connect_git_repository_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_developer_connect_git_repository_link")
	close({
		// Optional. Allows clients to store small amounts of arbitrary
		// data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Required. Git Clone URI.
		clone_uri!: string

		// Output only. [Output only] Create timestamp
		create_time?: string

		// Output only. [Output only] Delete timestamp
		delete_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. This checksum is computed by the server based on the
		// value of other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		etag?: string

		// Required. The ID to use for the repository, which will become
		// the final component of
		// the repository's resource name. This ID should be unique in the
		// connection.
		// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
		git_repository_link_id!: string

		// Optional. Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122. See documentation for resource
		// type 'developerconnect.googleapis.com/GitRepositoryLink'.
		location!: string
		timeouts?: #timeouts

		// Identifier. Resource name of the repository, in the format
		// 'projects/*/locations/*/connections/*/gitRepositoryLinks/*'.
		name?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122. See documentation for resource
		// type 'developerconnect.googleapis.com/GitRepositoryLink'.
		parent_connection!: string

		// Output only. Set to true when the connection is being set up or
		// updated in the
		// background.
		reconciling?: bool
		project?:     string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. A system-assigned unique identifier for a the
		// GitRepositoryLink.
		uid?: string

		// Output only. [Output only] Update timestamp
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
