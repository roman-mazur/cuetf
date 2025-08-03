package res

#aws_load_balancer_listener_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_load_balancer_listener_policy")
	close({
		id?:                 string
		load_balancer_name!: string
		load_balancer_port!: number
		policy_names?: [...string]
		region?: string
		triggers?: [string]: string
	})
}
