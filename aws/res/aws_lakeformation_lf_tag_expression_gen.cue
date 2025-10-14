package res

#aws_lakeformation_lf_tag_expression: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_lf_tag_expression")
	close({
		// The ID of the Data Catalog.
		catalog_id?: string

		// A description of the LF-Tag Expression.
		description?: string

		// The name of the LF-Tag Expression.
		name!: string
		expression?: matchN(1, [#expression, [...#expression]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#expression: close({
		tag_key!: string
		tag_values!: [...string]
	})
}
