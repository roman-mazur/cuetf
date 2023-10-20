package data

#aws_cloudformation_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudformation_type")
	arn?:                string
	default_version_id?: string
	deprecated_status?:  string
	description?:        string
	documentation_url?:  string
	execution_role_arn?: string
	id?:                 string
	is_default_version?: bool
	logging_config?: [...{
		log_group_name?: string
		log_role_arn?:   string
	}]
	provisioning_type?: string
	schema?:            string
	source_url?:        string
	type?:              string
	type_arn?:          string
	type_name?:         string
	version_id?:        string
	visibility?:        string
}
