package data

#elasticstack_elasticsearch_ingest_processor_kv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_kv")
	close({
		// Description of the processor.
		description?: string

		// List of keys to exclude from document
		exclude_keys?: [...string]

		// The field to be parsed. Supports template snippets.
		field!: string

		// Regex pattern to use for splitting key-value pairs.
		field_split!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// List of keys to filter and insert into document. Defaults to
		// including all keys
		include_keys?: [...string]

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Prefix to be added to extracted keys.
		prefix?: string

		// If `true` strip brackets `()`, `<>`, `[]` as well as quotes `'`
		// and `"` from extracted values.
		strip_brackets?: bool

		// Identifier for the processor.
		tag?: string

		// The field to insert the extracted keys into. Defaults to the
		// root of the document.
		target_field?: string

		// String of characters to trim from extracted keys.
		trim_key?: string

		// String of characters to trim from extracted values.
		trim_value?: string

		// Regex pattern to use for splitting the key from the value
		// within a key-value pair.
		value_split!: string
	})
}
