package res

import "list"

#azurerm_nginx_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_nginx_deployment")
	close({
		automatic_upgrade_channel?: string
		capacity?:                  number
		dataplane_api_endpoint?:    string
		diagnose_support_enabled?:  bool
		email?:                     string
		auto_scale_profile?: matchN(1, [#auto_scale_profile, [...#auto_scale_profile]])
		id?:            string
		ip_address?:    string
		location!:      string
		name!:          string
		nginx_version?: string
		frontend_private?: matchN(1, [#frontend_private, [...#frontend_private]])
		resource_group_name!: string
		sku!:                 string
		tags?: [string]: string
		frontend_public?: matchN(1, [#frontend_public, list.MaxItems(1) & [...#frontend_public]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		logging_storage_account?: matchN(1, [#logging_storage_account, [...#logging_storage_account]])
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		timeouts?: #timeouts
		web_application_firewall?: matchN(1, [#web_application_firewall, list.MaxItems(1) & [...#web_application_firewall]])
	})

	#auto_scale_profile: close({
		max_capacity!: number
		min_capacity!: number
		name!:         string
	})

	#frontend_private: close({
		allocation_method!: string
		ip_address!:        string
		subnet_id!:         string
	})

	#frontend_public: close({
		ip_address?: [...string]
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#logging_storage_account: close({
		container_name?: string
		name?:           string
	})

	#network_interface: close({
		subnet_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#web_application_firewall: close({
		activation_state_enabled!: bool
		status?: [...close({
			attack_signatures_package?: [...close({
				revision_datetime?: string
				version?:           string
			})]
			bot_signatures_package?: [...close({
				revision_datetime?: string
				version?:           string
			})]
			component_versions?: [...close({
				waf_engine_version?: string
				waf_nginx_version?:  string
			})]
			threat_campaigns_package?: [...close({
				revision_datetime?: string
				version?:           string
			})]
		})]
	})
}
