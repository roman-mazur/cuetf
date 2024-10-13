package res

#aws_licensemanager_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_licensemanager_association")
	id?:                        string
	license_configuration_arn!: string
	resource_arn!:              string
}
