package res

#aws_wafregional_geo_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_geo_match_set")
	close({
		geo_match_constraint?: matchN(1, [#geo_match_constraint, [...#geo_match_constraint]])
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#geo_match_constraint: close({
		type!:  string
		value!: string
	})
}
