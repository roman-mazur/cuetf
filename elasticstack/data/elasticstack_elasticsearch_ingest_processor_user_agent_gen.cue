package data

#elasticstack_elasticsearch_ingest_processor_user_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_user_agent")
	close({
		// Extracts device type from the user agent string on a
		// best-effort basis. Supported only starting from Elasticsearch
		// version **8.0**
		extract_device_type?: bool

		// The field containing the user agent string.
		field!: string

		// Internal identifier of the resource.
		id?: string

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Controls what properties are added to `target_field`.
		properties?: [...string]

		// The name of the file in the `config/ingest-user-agent`
		// directory containing the regular expressions for parsing the
		// user agent string.
		regex_file?: string

		// The field that will be filled with the user agent details.
		target_field?: string
	})
}
