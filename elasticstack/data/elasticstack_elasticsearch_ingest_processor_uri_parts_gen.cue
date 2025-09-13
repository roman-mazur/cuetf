package data

#elasticstack_elasticsearch_ingest_processor_uri_parts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_uri_parts")
	close({
		// Description of the processor.
		description?: string

		// Field containing the URI string.
		field!: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// If true, the processor copies the unparsed URI to
		// `<target_field>.original.`
		keep_original?: bool

		// Handle failures for the processor.
		on_failure?: [...string]

		// If `true`, the processor removes the `field` after parsing the
		// URI string. If parsing fails, the processor does not remove
		// the `field`.
		remove_if_successful?: bool

		// Identifier for the processor.
		tag?: string

		// Output field for the URI object.
		target_field?: string
	})
}
