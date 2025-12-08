package res

import "list"

#azurerm_signalr_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_signalr_service")
	close({
		aad_auth_enabled?:          bool
		connectivity_logs_enabled?: bool
		hostname?:                  string
		http_request_logs_enabled?: bool
		id?:                        string
		ip_address?:                string
		local_auth_enabled?:        bool
		cors?: matchN(1, [#cors, [...#cors]])
		location!:                      string
		messaging_logs_enabled?:        bool
		name!:                          string
		primary_access_key?:            string
		primary_connection_string?:     string
		public_network_access_enabled?: bool
		public_port?:                   number
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		resource_group_name!:                      string
		secondary_access_key?:                     string
		secondary_connection_string?:              string
		server_port?:                              number
		serverless_connection_timeout_in_seconds?: number
		live_trace?: matchN(1, [#live_trace, list.MaxItems(1) & [...#live_trace]])
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		service_mode?: string
		tags?: [string]: string
		timeouts?: #timeouts
		upstream_endpoint?: matchN(1, [#upstream_endpoint, [...#upstream_endpoint]])
		tls_client_cert_enabled?: bool
	})

	#cors: close({
		allowed_origins!: [...string]
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#live_trace: close({
		connectivity_logs_enabled?: bool
		enabled?:                   bool
		http_request_logs_enabled?: bool
		messaging_logs_enabled?:    bool
	})

	#sku: close({
		capacity!: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#upstream_endpoint: close({
		category_pattern!: [...string]
		event_pattern!: [...string]
		hub_pattern!: [...string]
		url_template!:              string
		user_assigned_identity_id?: string
	})
}
