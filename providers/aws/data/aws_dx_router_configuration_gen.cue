package data

#aws_dx_router_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_dx_router_configuration")
	close({
		customer_router_config?: string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		router?: [...close({
			platform?:                       string
			router_type_identifier?:         string
			software?:                       string
			vendor?:                         string
			xslt_template_name?:             string
			xslt_template_name_for_mac_sec?: string
		})]
		router_type_identifier!: string
		virtual_interface_id!:   string
		virtual_interface_name?: string
	})
}
