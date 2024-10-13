package res

#aws_cloudwatch_log_account_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_account_policy")
	id?:                 string
	policy_document!:    string
	policy_name!:        string
	policy_type!:        string
	scope?:              string
	selection_criteria?: string
}
