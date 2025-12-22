package data

#elasticstack_elasticsearch_ingest_processor_append: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_append")
	close({
		// If `false`, the processor does not append values already
		// present in the field.
		allow_duplicates?: bool

		// Description of the processor.
		description?: string

		// The field to be appended to.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The media type for encoding value. Applies only when value is a
		// template snippet. Must be one of `application/json`,
		// `text/plain`, or `application/x-www-form-urlencoded`.
		// Supported only from Elasticsearch version **7.15**.
		media_type?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string

		// The value to be appended.
		value!: [...string]
	})
}
