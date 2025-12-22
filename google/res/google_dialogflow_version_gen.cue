package res

#google_dialogflow_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_version")
	close({
		// The developer-provided description of this version.
		description?: string

		// The unique identifier of this agent version.
		name?: string
		id?:   string

		// The Flow to create an Version for.
		// Format: projects/<Project ID>/agent.
		parent?: string

		// The status of this version.
		status?:   string
		timeouts?: #timeouts

		// The sequential number of this version.
		version_number?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
