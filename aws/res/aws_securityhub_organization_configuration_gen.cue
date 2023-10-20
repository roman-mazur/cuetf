package res

#aws_securityhub_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securityhub_organization_configuration")
	auto_enable:            bool
	auto_enable_standards?: string
	id?:                    string
}
