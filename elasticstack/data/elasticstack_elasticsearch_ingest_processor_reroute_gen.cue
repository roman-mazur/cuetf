package data

#elasticstack_elasticsearch_ingest_processor_reroute: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_reroute")
	close({
		// The destination dataset to route the document to.
		dataset?: string

		// Description of the processor.
		description?: string

		// The destination data stream, index, or index alias to route the
		// document to.
		destination?: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The destination namespace to route the document to.
		namespace?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string
	})
}
