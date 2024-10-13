package res

#aws_lambda_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_permission")
	action!:                 string
	event_source_token?:     string
	function_name!:          string
	function_url_auth_type?: string
	id?:                     string
	principal!:              string
	principal_org_id?:       string
	qualifier?:              string
	source_account?:         string
	source_arn?:             string
	statement_id?:           string
	statement_id_prefix?:    string
}
