package data

#elasticstack_elasticsearch_ingest_processor_grok: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_grok")
	description?:       string
	ecs_compatibility?: string
	field!:             string
	id?:                string
	if?:                string
	ignore_failure?:    bool
	ignore_missing?:    bool
	json?:              string
	on_failure?: [...string]
	pattern_definitions?: [string]: string
	patterns!: [...string]
	tag?:         string
	trace_match?: bool
}
