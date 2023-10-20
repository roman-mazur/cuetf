package data

#aws_connect_routing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_routing_profile")
	arn?:                       string
	default_outbound_queue_id?: string
	description?:               string
	id?:                        string
	instance_id:                string
	media_concurrencies?: [...{
		channel?:     string
		concurrency?: number
	}]
	name?: string
	queue_configs?: [...{
		channel?:    string
		delay?:      number
		priority?:   number
		queue_arn?:  string
		queue_id?:   string
		queue_name?: string
	}]
	routing_profile_id?: string
	tags?: [string]: string
}
