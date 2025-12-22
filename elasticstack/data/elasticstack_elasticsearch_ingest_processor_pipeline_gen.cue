package data

#elasticstack_elasticsearch_ingest_processor_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_pipeline")
	close({
		// Description of the processor.
		description?: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The name of the pipeline to execute.
		name!: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string
	})
}
