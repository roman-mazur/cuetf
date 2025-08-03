package res

#aws_appconfig_extension_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_extension_association")
	close({
		arn?:               string
		extension_arn!:     string
		extension_version?: number
		id?:                string
		parameters?: [string]: string
		region?:       string
		resource_arn!: string
	})
}
