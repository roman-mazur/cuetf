package res

#aws_proxy_protocol_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_proxy_protocol_policy")
	close({
		id?: string
		instance_ports!: [...string]
		load_balancer!: string
		region?:        string
	})
}
