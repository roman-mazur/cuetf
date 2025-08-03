package res

#aws_licensemanager_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_licensemanager_association")
	close({
		id?:                        string
		license_configuration_arn!: string
		region?:                    string
		resource_arn!:              string
	})
}
