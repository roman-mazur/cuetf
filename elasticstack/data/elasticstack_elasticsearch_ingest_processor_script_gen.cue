package data

#elasticstack_elasticsearch_ingest_processor_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_script")
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

		// Script language.
		lang?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Object containing parameters for the script.
		params?: string

		// ID of a stored script. If no `source` is specified, this
		// parameter is required.
		script_id?: string

		// Inline script. If no id is specified, this parameter is
		// required.
		source?: string

		// Identifier for the processor.
		tag?: string
	})
}
