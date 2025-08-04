package res

#aws_lb_ssl_negotiation_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_ssl_negotiation_policy")
	close({
		attribute?: matchN(1, [#attribute, [...#attribute]])
		id?:            string
		lb_port!:       number
		load_balancer!: string
		name!:          string
		region?:        string
		triggers?: [string]: string
	})

	#attribute: close({
		name!:  string
		value!: string
	})
}
