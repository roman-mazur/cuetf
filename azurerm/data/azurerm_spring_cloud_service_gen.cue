package data

#azurerm_spring_cloud_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_service")
	close({
		timeouts?: #timeouts
		config_server_git_setting?: [...close({
			http_basic_auth?: [...close({
				password?: string
				username?: string
			})]
			label?: string
			repository?: [...close({
				http_basic_auth?: [...close({
					password?: string
					username?: string
				})]
				label?: string
				name?:  string
				pattern?: [...string]
				search_paths?: [...string]
				ssh_auth?: [...close({
					host_key?:                         string
					host_key_algorithm?:               string
					private_key?:                      string
					strict_host_key_checking_enabled?: bool
				})]
				uri?: string
			})]
			search_paths?: [...string]
			ssh_auth?: [...close({
				host_key?:                         string
				host_key_algorithm?:               string
				private_key?:                      string
				strict_host_key_checking_enabled?: bool
			})]
			uri?: string
		})]
		id?:       string
		location?: string
		name!:     string
		outbound_public_ip_addresses?: [...string]
		required_network_traffic_rules?: [...close({
			direction?: string
			fqdns?: [...string]
			ip_addresses?: [...string]
			port?:     number
			protocol?: string
		})]
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
