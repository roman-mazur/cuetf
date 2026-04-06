package data

#elasticstack_elasticsearch_ingest_processor_foreach: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_foreach")
	close({
		// Description of the processor.
		description?: string

		// Field containing array or object values.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true`, the processor silently exits without changing the
		// document if the `field` is `null` or missing.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Ingest processor to run on each element.
		processor!: string

		// Identifier for the processor.
		tag?: string
	})
}
