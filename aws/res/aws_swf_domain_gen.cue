package res

#aws_swf_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_swf_domain")
	close({
		arn?:         string
		description?: string
		id?:          string
		name?:        string
		name_prefix?: string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		workflow_execution_retention_period_in_days!: string
	})
}
