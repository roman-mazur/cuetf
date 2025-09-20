package data

#azurerm_signalr_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_signalr_service")
	close({
		aad_auth_enabled?:                         bool
		hostname?:                                 string
		id?:                                       string
		ip_address?:                               string
		local_auth_enabled?:                       bool
		location?:                                 string
		name!:                                     string
		primary_access_key?:                       string
		primary_connection_string?:                string
		public_network_access_enabled?:            bool
		public_port?:                              number
		resource_group_name!:                      string
		secondary_access_key?:                     string
		secondary_connection_string?:              string
		server_port?:                              number
		timeouts?:                                 #timeouts
		serverless_connection_timeout_in_seconds?: number
		tags?: [string]: string
		tls_client_cert_enabled?: bool
	})

	#timeouts: close({
		read?: string
	})
}
