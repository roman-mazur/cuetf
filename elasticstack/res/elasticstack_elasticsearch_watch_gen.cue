package res

#elasticstack_elasticsearch_watch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_watch")
	actions?:                   string
	active?:                    bool
	condition?:                 string
	id?:                        string
	input?:                     string
	metadata?:                  string
	throttle_period_in_millis?: number
	transform?:                 string
	trigger!:                   string
	watch_id!:                  string
}
