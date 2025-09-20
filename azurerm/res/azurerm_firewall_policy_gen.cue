package res

import "list"

#azurerm_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall_policy")
	close({
		auto_learn_private_ranges_enabled?: bool
		base_policy_id?:                    string
		child_policies?: [...string]
		firewalls?: [...string]
		id?:       string
		location!: string
		name!:     string
		private_ip_ranges?: [...string]
		resource_group_name!: string
		rule_collection_groups?: [...string]
		dns?: matchN(1, [#dns, list.MaxItems(1) & [...#dns]])
		explicit_proxy?: matchN(1, [#explicit_proxy, list.MaxItems(1) & [...#explicit_proxy]])
		sku?:                  string
		sql_redirect_allowed?: bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		tags?: [string]: string
		insights?: matchN(1, [#insights, list.MaxItems(1) & [...#insights]])
		intrusion_detection?: matchN(1, [#intrusion_detection, list.MaxItems(1) & [...#intrusion_detection]])
		threat_intelligence_allowlist?: matchN(1, [#threat_intelligence_allowlist, list.MaxItems(1) & [...#threat_intelligence_allowlist]])
		threat_intelligence_mode?: string
		timeouts?:                 #timeouts
		tls_certificate?: matchN(1, [#tls_certificate, list.MaxItems(1) & [...#tls_certificate]])
	})

	#dns: close({
		proxy_enabled?: bool
		servers?: [...string]
	})

	#explicit_proxy: close({
		enable_pac_file?: bool
		enabled?:         bool
		http_port?:       number
		https_port?:      number
		pac_file?:        string
		pac_file_port?:   number
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#insights: close({
		log_analytics_workspace?: matchN(1, [_#defs."/$defs/insights/$defs/log_analytics_workspace", [..._#defs."/$defs/insights/$defs/log_analytics_workspace"]])
		default_log_analytics_workspace_id!: string
		enabled!:                            bool
		retention_in_days?:                  number
	})

	#intrusion_detection: close({
		signature_overrides?: matchN(1, [_#defs."/$defs/intrusion_detection/$defs/signature_overrides", [..._#defs."/$defs/intrusion_detection/$defs/signature_overrides"]])
		traffic_bypass?: matchN(1, [_#defs."/$defs/intrusion_detection/$defs/traffic_bypass", [..._#defs."/$defs/intrusion_detection/$defs/traffic_bypass"]])
		mode?: string
		private_ranges?: [...string]
	})

	#threat_intelligence_allowlist: close({
		fqdns?: [...string]
		ip_addresses?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#tls_certificate: close({
		key_vault_secret_id!: string
		name!:                string
	})

	_#defs: "/$defs/insights/$defs/log_analytics_workspace": close({
		firewall_location!: string
		id!:                string
	})

	_#defs: "/$defs/intrusion_detection/$defs/signature_overrides": close({
		id?:    string
		state?: string
	})

	_#defs: "/$defs/intrusion_detection/$defs/traffic_bypass": close({
		description?: string
		destination_addresses?: [...string]
		destination_ip_groups?: [...string]
		destination_ports?: [...string]
		name!:     string
		protocol!: string
		source_addresses?: [...string]
		source_ip_groups?: [...string]
	})
}
