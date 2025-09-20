package res

import "list"

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
		location!:                      string
		name!:                          string
		primary_access_key?:            string
		primary_connection_string?:     string
		public_network_access_enabled?: bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		live_trace?: matchN(1, [#live_trace, list.MaxItems(1) & [...#live_trace]])
		public_port?:                 number
		timeouts?:                    #timeouts
		resource_group_name!:         string
		secondary_access_key?:        string
		secondary_connection_string?: string
		server_port?:                 number
		sku!:                         string
		tags?: [string]: string
		tls_client_cert_enabled?: bool
		version?:                 string
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

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
