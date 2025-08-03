package res

#aws_cloudwatch_log_account_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_account_policy")
	close({
		id?:                 string
		policy_document!:    string
		policy_name!:        string
		policy_type!:        string
		region?:             string
		scope?:              string
		selection_criteria?: string
	})
}
