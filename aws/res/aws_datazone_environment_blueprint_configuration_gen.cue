package res

#aws_datazone_environment_blueprint_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment_blueprint_configuration")
	close({
		domain_id!: string
		enabled_regions!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		environment_blueprint_id!: string
		manage_access_role_arn?:   string
		provisioning_role_arn?:    string
		regional_parameters?: [string]: [string]: string
	})
}
