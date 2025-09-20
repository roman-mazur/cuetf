package data

#azurerm_web_pubsub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub")
	close({
		aad_auth_enabled?:              bool
		capacity?:                      number
		external_ip?:                   string
		hostname?:                      string
		id?:                            string
		local_auth_enabled?:            bool
		location?:                      string
		name!:                          string
		primary_access_key?:            string
		primary_connection_string?:     string
		public_network_access_enabled?: bool
		timeouts?:                      #timeouts
		public_port?:                   number
		resource_group_name!:           string
		secondary_access_key?:          string
		secondary_connection_string?:   string
		server_port?:                   number
		sku?:                           string
		tags?: [string]: string
		tls_client_cert_enabled?: bool
		version?:                 string
	})

	#timeouts: close({
		read?: string
	})
}
