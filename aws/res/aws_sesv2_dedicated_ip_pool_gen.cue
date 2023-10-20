package res

#aws_sesv2_dedicated_ip_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_dedicated_ip_pool")
	arn?:          string
	id?:           string
	pool_name:     string
	scaling_mode?: string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
