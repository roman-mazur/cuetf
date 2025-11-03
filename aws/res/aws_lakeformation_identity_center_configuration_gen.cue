package res

#aws_lakeformation_identity_center_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_identity_center_configuration")
	close({
		application_arn?: string

		// The ID of the Data Catalog.
		catalog_id?: string

		// The ARN of the Identity Center instance.
		instance_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		resource_share?: string
	})
}
