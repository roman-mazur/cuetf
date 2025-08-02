package res

#aws_securityhub_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_account")
	close({
		arn?:                       string
		auto_enable_controls?:      bool
		control_finding_generator?: string
		enable_default_standards?:  bool
		id?:                        string
		region?:                    string
	})
}
