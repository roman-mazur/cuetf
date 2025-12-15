package res

#elasticstack_kibana_security_list_data_streams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_security_list_data_streams")
	close({
		// The unique identifier for the data streams in the format
		// `{space_id}`.
		id?: string

		// Indicates whether the `.lists` data stream exists.
		list_index?: bool

		// Indicates whether the `.items` data stream exists.
		list_item_index?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})
}
