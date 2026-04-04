package data

#elasticstack_elasticsearch_ingest_processor_csv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_csv")
	close({
		// Description of the processor.
		description?: string

		// Value used to fill empty fields, empty fields will be skipped
		// if this is not provided.
		empty_value?: string

		// The field to extract data from.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Quote used in CSV, has to be single character string
		quote?: string

		// Separator used in CSV, has to be single character string.
		separator?: string

		// Identifier for the processor.
		tag?: string

		// The array of fields to assign extracted values to.
		target_fields!: [...string]

		// Trim whitespaces in unquoted fields.
		trim?: bool
	})
}
