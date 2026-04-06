package data

#scaleway_object_bucket_server_side_encryption_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_object_bucket_server_side_encryption_configuration")
	close({
		// The bucket's name or regional ID.
		bucket?: string

		// The ID of the bucket server side encryption configuration
		bucket_server_side_encryption_configuration_id?: string
		id?:                                             string

		// Set of server-side encryption configuration rules
		rule?: [...close({
			apply_server_side_encryption_by_default?: [...close({
				sse_algorithm?: string
			})]
		})]
	})
}
