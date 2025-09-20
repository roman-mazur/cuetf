package data

import "list"

#azurerm_dashboard_grafana: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dashboard_grafana")
	close({
		api_key_enabled?:                        bool
		auto_generated_domain_name_label_scope?: string
		azure_monitor_workspace_integrations?: [...close({
			resource_id?: string
		})]
		deterministic_outbound_ip_enabled?: bool
		endpoint?:                          string
		grafana_major_version?:             string
		grafana_version?:                   string
		id?:                                string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		location?: string
		name!:     string
		outbound_ips?: [...string]
		timeouts?:                      #timeouts
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku?:                           string
		tags?: [string]: string
		zone_redundancy_enabled?: bool
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		read?: string
	})
}
