package data

#elasticstack_elasticsearch_ingest_processor_dissect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_dissect")
	close({
		// The character(s) that separate the appended fields.
		append_separator?: string

		// Description of the processor.
		description?: string

		// The field to dissect.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// The pattern to apply to the field.
		pattern!: string

		// Identifier for the processor.
		tag?: string
	})
}
