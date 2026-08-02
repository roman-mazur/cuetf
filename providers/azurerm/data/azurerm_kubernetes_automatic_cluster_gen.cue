package data

azurerm_kubernetes_automatic_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_kubernetes_automatic_cluster")
	close({
		timeouts?: #timeouts
		api_server_access?: [...close({
			authorized_ip_ranges?: [...string]
			subnet_id?: string
		})]
		current_kubernetes_version?:  string
		dns_prefix?:                  string
		fully_qualified_domain_name?: string
		hosted_system?: [...close({
			node_subnet_id?:        string
			system_node_subnet_id?: string
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kube_config?: [...close({
			client_certificate?:     string
			client_key?:             string
			cluster_ca_certificate?: string
			host?:                   string
			password?:               string
			username?:               string
		})]
		kube_config_raw?: string
		kubelet_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
		kubernetes_version?:                 string
		location?:                           string
		name!:                               string
		node_resource_group?:                string
		node_resource_group_id?:             string
		portal_fully_qualified_domain_name?: string
		private_cluster?: [...close({
			private_dns_zone_id?:                        string
			public_fully_qualified_domain_name_enabled?: bool
		})]
		private_fully_qualified_domain_name?: string
		resource_group_name!:                 string
		service_mesh?: [...close({
			certificate_authority?: [...close({
				certificate_chain_object_name?: string
				certificate_object_name?:       string
				key_object_name?:               string
				key_vault_id?:                  string
				root_certificate_object_name?:  string
			})]
			external_ingress_gateway_enabled?: bool
			internal_ingress_gateway_enabled?: bool
			proxy_redirect_mechanism?:         string
			revisions?: [...string]
		})]
		tags?: [string]: string
		web_app_routing_ingress?: [...close({
			default_nginx_controller?: string
			dns_zone_ids?: [...string]
			istio_enabled?: bool
			web_app_routing_identity?: [...close({
				client_id?:                 string
				object_id?:                 string
				user_assigned_identity_id?: string
			})]
		})]
	})

	#timeouts: close({
		read?: string
	})
}
