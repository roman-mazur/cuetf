package data

#elasticstack_elasticsearch_ingest_processor_registered_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_registered_domain")
	close({
		// Description of the processor.
		description?: string

		// Field containing the source FQDN.
		field!: string

		// Internal identifier of the resource.
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

		// Identifier for the processor.
		tag?: string

		// Object field containing extracted domain components. If an
		// `<empty string>`, the processor adds components to the
		// document’s root.
		target_field?: string
	})
}
