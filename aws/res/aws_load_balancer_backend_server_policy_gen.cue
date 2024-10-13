package res

#aws_load_balancer_backend_server_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_load_balancer_backend_server_policy")
	id?:                 string
	instance_port!:      number
	load_balancer_name!: string
	policy_names?: [...string]
}
