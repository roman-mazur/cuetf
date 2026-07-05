package res

aws_xray_indexing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_xray_indexing_rule")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#rule: close({
		probabilistic?: matchN(1, [_#defs."/$defs/rule/$defs/probabilistic", [..._#defs."/$defs/rule/$defs/probabilistic"]])
	})

	_#defs: "/$defs/rule/$defs/probabilistic": close({
		actual_sampling_percentage?:  number
		desired_sampling_percentage!: number
	})
}
