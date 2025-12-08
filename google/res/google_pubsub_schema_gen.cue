package res

#google_pubsub_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_pubsub_schema")
	close({
		// The definition of the schema.
		// This should contain a string representing the full definition
		// of the schema
		// that is a valid schema definition of the type specified in
		// type. Changes
		// to the definition commit new [schema
		// revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
		// A schema can only have up to 20 revisions, so updates that fail
		// with an
		// error indicating that the limit has been reached require
		// manually
		// [deleting old
		// revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision).
		definition?: string

		// The ID to use for the schema, which will become the final
		// component of the schema's resource name.
		name!: string
		id?:   string

		// The type of the schema definition Default value:
		// "TYPE_UNSPECIFIED" Possible values: ["TYPE_UNSPECIFIED",
		// "PROTOCOL_BUFFER", "AVRO"]
		type?:     string
		project?:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
