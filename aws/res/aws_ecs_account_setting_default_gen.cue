package res

#aws_ecs_account_setting_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_account_setting_default")
	id?:            string
	name!:          string
	principal_arn?: string
	value!:         string
}
