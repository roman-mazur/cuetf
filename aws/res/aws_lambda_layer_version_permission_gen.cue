package res

#aws_lambda_layer_version_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_layer_version_permission")
	close({
		action!:          string
		id?:              string
		layer_name!:      string
		organization_id?: string
		policy?:          string
		principal!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		revision_id?:    string
		skip_destroy?:   bool
		statement_id!:   string
		version_number!: number
	})
}
