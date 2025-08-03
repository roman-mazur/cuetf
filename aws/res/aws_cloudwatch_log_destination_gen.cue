package res

#aws_cloudwatch_log_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_destination")
	close({
		arn?:      string
		id?:       string
		name!:     string
		region?:   string
		role_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_arn!: string
	})
}
