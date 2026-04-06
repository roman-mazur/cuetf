package data

#elasticstack_elasticsearch_ingest_processor_json: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_json")
	close({
		// Flag that forces the parsed JSON to be added at the top level
		// of the document. `target_field` must not be set when this
		// option is chosen.
		add_to_root?: bool

		// When set to `replace`, root fields that conflict with fields
		// from the parsed JSON will be overridden. When set to `merge`,
		// conflicting fields will be merged. Only applicable if
		// `add_to_root` is set to `true`.
		add_to_root_conflict_strategy?: string

		// When set to `true`, the JSON parser will not fail if the JSON
		// contains duplicate keys. Instead, the last encountered value
		// for any duplicate key wins.
		allow_duplicate_keys?: bool

		// Description of the processor.
		description?: string

		// The field to be parsed.
		field!: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string

		// The field that the converted structured object will be written
		// into. Any existing content in this field will be overwritten.
		target_field?: string
	})
}
