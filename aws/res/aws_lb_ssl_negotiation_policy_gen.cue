package res

#aws_lb_ssl_negotiation_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lb_ssl_negotiation_policy")
	id?:            string
	lb_port!:       number
	load_balancer!: string
	name!:          string
	triggers?: [string]: string
	attribute?: #attribute | [...#attribute]

	#attribute: {
		name!:  string
		value!: string
	}
}
