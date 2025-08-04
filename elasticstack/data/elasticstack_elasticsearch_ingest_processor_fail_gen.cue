package data

#elasticstack_elasticsearch_ingest_processor_fail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_fail")
	close({
		// Description of the processor.
		description?: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The error message thrown by the processor.
		message!: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string
	})
}
