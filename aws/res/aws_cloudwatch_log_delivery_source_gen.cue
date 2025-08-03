package res

#aws_cloudwatch_log_delivery_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_delivery_source")
	close({
		arn?:          string
		log_type!:     string
		name!:         string
		region?:       string
		resource_arn!: string
		service?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
