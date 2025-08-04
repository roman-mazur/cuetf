package data

#elasticstack_elasticsearch_ingest_processor_join: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_join")
	close({
		// Description of the processor.
		description?: string

		// Field containing array values to join.
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

		// The separator character.
		separator!: string

		// Identifier for the processor.
		tag?: string

		// The field to assign the converted value to, by default `field`
		// is updated in-place.
		target_field?: string
	})
}
