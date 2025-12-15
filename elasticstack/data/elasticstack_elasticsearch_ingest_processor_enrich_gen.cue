package data

#elasticstack_elasticsearch_ingest_processor_enrich: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_enrich")
	close({
		// Description of the processor.
		description?: string

		// The field in the input document that matches the policies
		// match_field used to retrieve the enrichment data.
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

		// The maximum number of matched documents to include under the
		// configured target field.
		max_matches?: number

		// Handle failures for the processor.
		on_failure?: [...string]

		// If processor will update fields with pre-existing
		// non-null-valued field.
		override?: bool

		// The name of the enrich policy to use.
		policy_name!: string

		// A spatial relation operator used to match the geoshape of
		// incoming documents to documents in the enrich index.
		shape_relation?: string

		// Identifier for the processor.
		tag?: string

		// Field added to incoming documents to contain enrich data.
		target_field!: string
	})
}
