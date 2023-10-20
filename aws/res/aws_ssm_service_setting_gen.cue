package res

#aws_ssm_service_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_service_setting")
	arn?:          string
	id?:           string
	setting_id:    string
	setting_value: string
	status?:       string
}
