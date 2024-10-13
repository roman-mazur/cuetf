package res

#aws_route53recoveryreadiness_recovery_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53recoveryreadiness_recovery_group")
	arn?: string
	cells?: [...string]
	id?:                  string
	recovery_group_name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: delete?: string
}
