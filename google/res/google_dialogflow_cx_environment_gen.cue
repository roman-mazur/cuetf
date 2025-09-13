package res

#google_dialogflow_cx_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_environment")
	close({
		// The human-readable description of the environment. The maximum
		// length is 500 characters. If exceeded, the request is
		// rejected.
		description?: string

		// The human-readable name of the environment (unique in an
		// agent). Limit of 64 characters.
		display_name!: string
		id?:           string

		// The name of the environment.
		name?:     string
		timeouts?: #timeouts

		// The Agent to create an Environment for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string

		// Update time of this environment. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
		version_configs?: matchN(1, [#version_configs, [_, ...] & [...#version_configs]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#version_configs: close({
		// Format:
		// projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
		version!: string
	})
}
