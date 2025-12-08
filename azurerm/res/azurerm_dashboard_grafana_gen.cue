package res

import "list"

#azurerm_dashboard_grafana: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_dashboard_grafana")
	close({
		api_key_enabled?:                        bool
		auto_generated_domain_name_label_scope?: string
		deterministic_outbound_ip_enabled?:      bool
		endpoint?:                               string
		grafana_major_version!:                  string
		azure_monitor_workspace_integrations?: matchN(1, [#azure_monitor_workspace_integrations, [...#azure_monitor_workspace_integrations]])
		grafana_version?: string
		id?:              string
		location!:        string
		name!:            string
		outbound_ip?: [...string]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku?:                           string
		tags?: [string]: string
		zone_redundancy_enabled?: bool
		smtp?: matchN(1, [#smtp, list.MaxItems(1) & [...#smtp]])
		timeouts?: #timeouts
	})

	#azure_monitor_workspace_integrations: close({
		resource_id!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#smtp: close({
		enabled?:                   bool
		from_address!:              string
		from_name?:                 string
		host!:                      string
		password!:                  string
		start_tls_policy!:          string
		user!:                      string
		verification_skip_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
