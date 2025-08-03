package res

#aws_route53recoveryreadiness_recovery_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53recoveryreadiness_recovery_group")
	close({
		arn?:      string
		timeouts?: #timeouts
		cells?: [...string]
		id?:                  string
		recovery_group_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		delete?: string
	})
}
