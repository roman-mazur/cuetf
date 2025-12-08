package data

#azurerm_nginx_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_nginx_deployment")
	close({
		auto_scale_profile?: [...close({
			max_capacity?: number
			min_capacity?: number
			name?:         string
		})]
		automatic_upgrade_channel?: string
		capacity?:                  number
		dataplane_api_endpoint?:    string
		diagnose_support_enabled?:  bool
		email?:                     string
		frontend_private?: [...close({
			allocation_method?: string
			ip_address?:        string
			subnet_id?:         string
		})]
		frontend_public?: [...close({
			ip_address?: [...string]
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		ip_address?: string
		location?:   string
		name!:       string
		network_interface?: [...close({
			subnet_id?: string
		})]
		nginx_version?:       string
		timeouts?:            #timeouts
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
		web_application_firewall?: [...close({
			activation_state_enabled?: bool
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
		})]
	})

	#timeouts: close({
		read?: string
	})
}
