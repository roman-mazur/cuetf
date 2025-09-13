package res

#google_discovery_engine_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_schema")
	close({
		// The unique id of the data store.
		data_store_id!: string

		// The JSON representation of the schema.
		json_schema?: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string
		id?:       string

		// The unique full resource name of the schema. Values are of the
		// format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/schemas/{schema_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The unique id of the schema.
		schema_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
