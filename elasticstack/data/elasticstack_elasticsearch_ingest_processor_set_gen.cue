package data

#elasticstack_elasticsearch_ingest_processor_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_set")
	close({
		// The origin field which will be copied to `field`, cannot set
		// `value` simultaneously.
		copy_from?: string

		// Description of the processor.
		description?: string

		// The field to insert, upsert, or update.
		field!: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// If `true` and `value` is a template snippet that evaluates to
		// `null` or the empty string, the processor quietly exits
		// without modifying the document
		ignore_empty_value?: bool

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The media type for encoding value.
		media_type?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// If processor will update fields with pre-existing
		// non-null-valued field.
		override?: bool

		// Identifier for the processor.
		tag?: string

		// The value to be set for the field. Supports template snippets.
		// May specify only one of `value` or `copy_from`.
		value?: string
	})
}
