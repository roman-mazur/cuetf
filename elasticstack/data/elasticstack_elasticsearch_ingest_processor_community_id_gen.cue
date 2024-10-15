package data

#elasticstack_elasticsearch_ingest_processor_community_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_community_id")
	description?:      string
	destination_ip?:   string
	destination_port?: number
	iana_number?:      number
	icmp_code?:        number
	icmp_type?:        number
	id?:               string
	if?:               string
	ignore_failure?:   bool
	ignore_missing?:   bool
	json?:             string
	on_failure?: [...string]
	seed?:         number
	source_ip?:    string
	source_port?:  number
	tag?:          string
	target_field?: string
	transport?:    string
}
