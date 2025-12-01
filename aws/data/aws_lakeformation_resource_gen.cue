package data

#aws_lakeformation_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lakeformation_resource")
	close({
		arn!:                   string
		hybrid_access_enabled?: bool
		id?:                    string
		last_modified?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		role_arn?:               string
		with_federation?:        bool
		with_privileged_access?: bool
	})
}
