package res

#elasticstack_kibana_synthetics_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_synthetics_parameter")
	close({
		// A description of the parameter.
		description?: string

		// Generated id for the parameter.
		id?: string

		// The key of the parameter.
		key!: string

		// Whether the parameter should be shared across spaces.
		share_across_spaces?: bool

		// An array of tags to categorize the parameter.
		tags?: [...string]

		// The value associated with the parameter.
		value!: string
	})
}
