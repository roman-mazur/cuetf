package res

#aws_ecs_account_setting_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_account_setting_default")
	close({
		id?:            string
		name!:          string
		principal_arn?: string
		region?:        string
		value!:         string
	})
}
