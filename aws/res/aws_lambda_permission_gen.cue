package res

#aws_lambda_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_permission")
	close({
		action!:                   string
		event_source_token?:       string
		function_name!:            string
		function_url_auth_type?:   string
		id?:                       string
		invoked_via_function_url?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		principal!:           string
		principal_org_id?:    string
		qualifier?:           string
		source_account?:      string
		source_arn?:          string
		statement_id?:        string
		statement_id_prefix?: string
	})
}
