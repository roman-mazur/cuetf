package data

#azurerm_arc_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_arc_machine")
	close({
		active_directory_fqdn?: string
		agent?: [...close({
			extensions_allow_list?: [...close({
				publisher?: string
				type?:      string
			})]
			extensions_block_list?: [...close({
				publisher?: string
				type?:      string
			})]
			extensions_enabled?:          bool
			guest_configuration_enabled?: bool
			incoming_connections_ports?: [...string]
			proxy_bypass?: [...string]
			proxy_url?: string
		})]
		agent_version?:     string
		client_public_key?: string
		cloud_metadata?: [...close({
			provider?: string
		})]
		detected_properties?: [string]: string
		display_name?: string
		dns_fqdn?:     string
		domain_name?:  string
		id?:           string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		last_status_change_time?: string
		location?:                string
		location_data?: [...close({
			city?:              string
			country_or_region?: string
			district?:          string
			name?:              string
		})]
		machine_fqdn?:     string
		mssql_discovered?: bool
		name!:             string
		os_name?:          string
		os_profile?: [...close({
			computer_name?: string
			linux?: [...close({
				patch?: [...close({
					assessment_mode?: string
					patch_mode?:      string
				})]
			})]
			windows?: [...close({
				patch?: [...close({
					assessment_mode?: string
					patch_mode?:      string
				})]
			})]
		})]
		os_sku?:                         string
		os_type?:                        string
		os_version?:                     string
		parent_cluster_resource_id?:     string
		private_link_scope_resource_id?: string
		timeouts?:                       #timeouts
		resource_group_name!:            string
		service_status?: [...close({
			extension_service?: [...close({
				startup_type?: string
				status?:       string
			})]
			guest_configuration_service?: [...close({
				startup_type?: string
				status?:       string
			})]
		})]
		status?: string
		tags?: [string]: string
		vm_id?:   string
		vm_uuid?: string
	})

	#timeouts: close({
		read?: string
	})
}
