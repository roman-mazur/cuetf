package data

#google_kms_key_handles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_key_handles")
	close({
		id?: string

		// A list of all the retrieved key handles
		key_handles?: [...close({
			kms_key?:                string
			name?:                   string
			resource_type_selector?: string
		})]

		// The canonical id for the location. For example: "us-east1".
		location!: string

		// Project ID of the project.
		project?: string

		// The resource_type_selector argument is used to add a filter
		// query parameter that limits which key handles are retrieved by
		// the data source:
		// ?filter=resource_type_selector="{{resource_type_selector}}".
		// Example values:
		// * resource_type_selector="{SERVICE}.googleapis.com/{TYPE}".
		// [See the documentation about using
		// filters](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles/list)
		resource_type_selector!: string
	})
}
