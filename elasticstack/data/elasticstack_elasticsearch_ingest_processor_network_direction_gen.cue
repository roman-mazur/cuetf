package data

#elasticstack_elasticsearch_ingest_processor_network_direction: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_network_direction")
	close({
		description?:    string
		destination_ip?: string
		id?:             string
		if?:             string
		ignore_failure?: bool
		ignore_missing?: bool
		internal_networks?: [...string]
		internal_networks_field?: string
		json?:                    string
		on_failure?: [...string]
		source_ip?:    string
		tag?:          string
		target_field?: string
	})
}
