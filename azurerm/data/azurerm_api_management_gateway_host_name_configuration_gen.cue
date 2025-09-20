package data

#azurerm_api_management_gateway_host_name_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_gateway_host_name_configuration")
	close({
		api_management_id!:                  string
		certificate_id?:                     string
		gateway_name!:                       string
		host_name?:                          string
		http2_enabled?:                      bool
		id?:                                 string
		name!:                               string
		timeouts?:                           #timeouts
		request_client_certificate_enabled?: bool
		tls10_enabled?:                      bool
		tls11_enabled?:                      bool
	})

	#timeouts: close({
		read?: string
	})
}
