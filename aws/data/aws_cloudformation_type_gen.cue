package data

#aws_cloudformation_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudformation_type")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		arn?:                string
		default_version_id?: string
		deprecated_status?:  string
		description?:        string
		documentation_url?:  string
		execution_role_arn?: string
		id?:                 string
		is_default_version?: bool
		logging_config?: [...close({
			log_group_name?: string
			log_role_arn?:   string
		})]
		provisioning_type?: string
		schema?:            string
		source_url?:        string
		type?:              string
		type_arn?:          string
		type_name?:         string
		version_id?:        string
		visibility?:        string
	})
}
