package res

#aws_sesv2_dedicated_ip_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_dedicated_ip_pool")
	arn?:          string
	id?:           string
	pool_name!:    string
	scaling_mode?: string
	tags?: [string]:     string
	tags_all?: [string]: string
}
