package data

#elasticstack_elasticsearch_ingest_processor_set_security_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_set_security_user")
	close({
		// Description of the processor.
		description?: string

		// The field to store the user information into.
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

		// Controls what user related properties are added to the `field`.
		properties?: [...string]

		// Identifier for the processor.
		tag?: string
	})
}
