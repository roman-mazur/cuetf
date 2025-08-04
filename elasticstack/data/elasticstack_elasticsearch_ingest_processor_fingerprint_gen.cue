package data

#elasticstack_elasticsearch_ingest_processor_fingerprint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_fingerprint")
	close({
		// Description of the processor.
		description?: string

		// Array of fields to include in the fingerprint.
		fields!: [...string]

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true`, the processor ignores any missing `fields`. If all
		// fields are missing, the processor silently exits without
		// modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// The hash method used to compute the fingerprint.
		method?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Salt value for the hash function.
		salt?: string

		// Identifier for the processor.
		tag?: string

		// Output field for the fingerprint.
		target_field?: string
	})
}
