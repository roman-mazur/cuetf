package res

#aws_api_gateway_domain_name_access_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_api_gateway_domain_name_access_association")
	close({
		access_association_source!:      string
		access_association_source_type!: string
		arn?:                            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		domain_name_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
