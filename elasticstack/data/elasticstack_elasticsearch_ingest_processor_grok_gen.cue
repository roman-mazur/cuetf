package data

#elasticstack_elasticsearch_ingest_processor_grok: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_grok")
	close({
		// Description of the processor.
		description?: string

		// Must be disabled or v1. If v1, the processor uses patterns with
		// Elastic Common Schema (ECS) field names. **NOTE:** Supported
		// only starting from version of Elasticsearch **7.16.x**.
		ecs_compatibility?: string

		// The field to use for grok expression parsing
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// A map of pattern-name and pattern tuples defining custom
		// patterns to be used by the current processor. Patterns
		// matching existing names will override the pre-existing
		// definition.
		pattern_definitions?: [string]: string

		// An ordered list of grok expression to match and extract named
		// captures with. Returns on the first expression in the list
		// that matches.
		patterns!: [...string]

		// Identifier for the processor.
		tag?: string

		// when true, `_ingest._grok_match_index` will be inserted into
		// your matched document’s metadata with the index into the
		// pattern found in `patterns` that matched.
		trace_match?: bool
	})
}
