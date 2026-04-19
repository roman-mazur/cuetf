package data

#google_vertex_ai_reasoning_engine_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vertex_ai_reasoning_engine_query")
	close({
		// Class method to be used for the query. It is optional and
		// defaults to "query" if unspecified.
		class_method?: string
		id?:           string

		// Input content provided by users in JSON object format. Examples
		// include text query, function calling parameters, media bytes,
		// etc..
		input?: string

		// The output of the query.
		output?: string

		// The project of the resource. If not provided, the provider
		// default project is used.
		project?: string

		// The id of the Vertex Agent Engine to query.
		reasoning_engine_id!: string

		// The location of the resource.
		region!: string
	})
}
