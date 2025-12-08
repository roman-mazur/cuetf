package data

#azurerm_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_firewall_policy")
	close({
		base_policy_id?: string
		child_policies?: [...string]
		dns?: [...close({
			network_rule_fqdn_enabled?: bool
			proxy_enabled?:             bool
			servers?: [...string]
		})]
		firewalls?: [...string]
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		rule_collection_groups?: [...string]
		tags?: [string]: string
		threat_intelligence_allowlist?: [...close({
			fqdns?: [...string]
			ip_addresses?: [...string]
		})]
		threat_intelligence_mode?: string
	})

	#timeouts: close({
		read?: string
	})
}
