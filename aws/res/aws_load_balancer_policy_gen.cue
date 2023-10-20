package res

#aws_load_balancer_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_load_balancer_policy")
	id?:                string
	load_balancer_name: string
	policy_name:        string
	policy_type_name:   string
	policy_attribute?:  #policy_attribute | [...#policy_attribute]

	#policy_attribute: {
		name?:  string
		value?: string
	}
}
