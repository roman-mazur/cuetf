package res

#aws_lb_cookie_stickiness_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_cookie_stickiness_policy")
	close({
		cookie_expiration_period?: number
		id?:                       string
		lb_port!:                  number
		load_balancer!:            string
		name!:                     string
		region?:                   string
	})
}
