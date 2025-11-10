package res

import "list"

#azurerm_web_pubsub_socketio: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub_socketio")
	close({
		aad_auth_enabled?:                     bool
		external_ip?:                          string
		hostname?:                             string
		id?:                                   string
		live_trace_connectivity_logs_enabled?: bool
		live_trace_enabled?:                   bool
		live_trace_http_request_logs_enabled?: bool
		live_trace_messaging_logs_enabled?:    bool
		local_auth_enabled?:                   bool
		location!:                             string
		name!:                                 string
		primary_access_key?:                   string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		primary_connection_string?:   string
		public_network_access?:       string
		public_port?:                 number
		resource_group_name!:         string
		timeouts?:                    #timeouts
		secondary_access_key?:        string
		secondary_connection_string?: string
		server_port?:                 number
		service_mode?:                string
		tags?: [string]: string
		tls_client_cert_enabled?: bool
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#sku: close({
		capacity?: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
