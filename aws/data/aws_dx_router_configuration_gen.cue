package data

#aws_dx_router_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_router_configuration")
	customer_router_config?: string
	id?:                     string
	router?: [...{
		platform?:                       string
		router_type_identifier?:         string
		software?:                       string
		vendor?:                         string
		xslt_template_name?:             string
		xslt_template_name_for_mac_sec?: string
	}]
	router_type_identifier:  string
	virtual_interface_id:    string
	virtual_interface_name?: string
}
