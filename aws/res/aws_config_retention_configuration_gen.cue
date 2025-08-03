package res

#aws_config_retention_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_retention_configuration")
	close({
		id?:                       string
		name?:                     string
		region?:                   string
		retention_period_in_days!: number
	})
}
