package res

#aws_load_balancer_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_load_balancer_policy")
	close({
		policy_attribute?: matchN(1, [#policy_attribute, [...#policy_attribute]])
		id?:                 string
		load_balancer_name!: string
		policy_name!:        string
		policy_type_name!:   string
		region?:             string
	})

	#policy_attribute: close({
		name?:  string
		value?: string
	})
}
