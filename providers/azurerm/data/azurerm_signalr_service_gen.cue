package data

azurerm_signalr_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_signalr_service")
	close({
		timeouts?:                  #timeouts
		aad_auth_enabled?:          bool
		connectivity_logs_enabled?: bool
		cors?: [...close({
			allowed_origins?: [...string]
		})]
		hostname?:                  string
		http_request_logs_enabled?: bool
		id?:                        string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		ip_address?: string
		live_trace?: [...close({
			connectivity_logs_enabled?: bool
			enabled?:                   bool
			http_request_logs_enabled?: bool
			messaging_logs_enabled?:    bool
		})]
		local_auth_enabled?:                       bool
		location?:                                 string
		messaging_logs_enabled?:                   bool
		name!:                                     string
		primary_access_key?:                       string
		primary_connection_string?:                string
		public_network_access_enabled?:            bool
		public_port?:                              number
		resource_group_name!:                      string
		secondary_access_key?:                     string
		secondary_connection_string?:              string
		server_port?:                              number
		serverless_connection_timeout_in_seconds?: number
		service_mode?:                             string
		sku?: [...close({
			capacity?: number
			name?:     string
		})]
		tags?: [string]: string
		tls_client_cert_enabled?: bool
		upstream_endpoint?: [...close({
			category_pattern?: [...string]
			event_pattern?: [...string]
			hub_pattern?: [...string]
			url_template?:              string
			user_assigned_identity_id?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
