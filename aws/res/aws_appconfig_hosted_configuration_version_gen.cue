package res

#aws_appconfig_hosted_configuration_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appconfig_hosted_configuration_version")
	close({
		application_id!: string
		arn?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		configuration_profile_id!: string
		content!:                  string
		content_type!:             string
		description?:              string
		id?:                       string
		version_number?:           number
	})
}
