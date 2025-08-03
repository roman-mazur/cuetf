package res

#aws_cloudwatch_dashboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_dashboard")
	close({
		dashboard_arn?:  string
		dashboard_body!: string
		dashboard_name!: string
		id?:             string
		region?:         string
	})
}
