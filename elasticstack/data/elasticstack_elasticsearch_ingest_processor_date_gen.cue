package data

#elasticstack_elasticsearch_ingest_processor_date: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_date")
	close({
		// Description of the processor.
		description?: string

		// The field to get the date from.
		field!: string

		// An array of the expected date formats.
		formats!: [...string]

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The locale to use when parsing the date, relevant when parsing
		// month names or week days.
		locale?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// The format to use when writing the date to `target_field`.
		output_format?: string

		// Identifier for the processor.
		tag?: string

		// The field that will hold the parsed date.
		target_field?: string

		// The timezone to use when parsing the date.
		timezone?: string
	})
}
