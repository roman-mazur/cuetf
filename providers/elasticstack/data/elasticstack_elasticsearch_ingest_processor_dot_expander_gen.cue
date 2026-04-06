package data

#elasticstack_elasticsearch_ingest_processor_dot_expander: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_dot_expander")
	close({
		// Description of the processor.
		description?: string

		// The field to expand into an object field. If set to *, all
		// top-level fields will be expanded.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Controls the behavior when there is already an existing nested
		// object that conflicts with the expanded field.
		override?: bool

		// The field that contains the field to expand.
		path?: string

		// Identifier for the processor.
		tag?: string
	})
}
