package res

#aws_lb_ssl_negotiation_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_ssl_negotiation_policy")
	close({
		id?:      string
		lb_port!: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		load_balancer!: string
		name!:          string
		triggers?: [string]: string
		attribute?: matchN(1, [#attribute, [...#attribute]])
	})

	#attribute: close({
		name!:  string
		value!: string
	})
}
