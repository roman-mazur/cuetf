package data

#elasticstack_elasticsearch_ingest_processor_date_index_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_date_index_name")
	close({
		// An array of the expected date formats for parsing dates /
		// timestamps in the document being preprocessed.
		date_formats?: [...string]

		// How to round the date when formatting the date into the index
		// name.
		date_rounding!: string

		// Description of the processor.
		description?: string

		// The field to get the date or timestamp from.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// The format to be used when printing the parsed date into the
		// index name.
		index_name_format?: string

		// A prefix of the index name to be prepended before the printed
		// date.
		index_name_prefix?: string

		// JSON representation of this data source.
		json?: string

		// The locale to use when parsing the date from the document being
		// preprocessed, relevant when parsing month names or week days.
		locale?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string

		// The timezone to use when parsing the date and when date math
		// index supports resolves expressions into concrete index names.
		timezone?: string
	})
}
