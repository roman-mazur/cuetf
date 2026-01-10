package res

#aws_load_balancer_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_load_balancer_policy")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		load_balancer_name!: string
		policy_name!:        string
		policy_type_name!:   string
		policy_attribute?: matchN(1, [#policy_attribute, [...#policy_attribute]])
	})

	#policy_attribute: close({
		name?:  string
		value?: string
	})
}
