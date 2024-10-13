package res

#aws_route53recoveryreadiness_readiness_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53recoveryreadiness_readiness_check")
	arn?:                  string
	id?:                   string
	readiness_check_name!: string
	resource_set_name!:    string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: delete?: string
}
