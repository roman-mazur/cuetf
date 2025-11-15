package data

#azurerm_kubernetes_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_cluster")
	close({
		aci_connector_linux?: [...close({
			subnet_name?: string
		})]
		agent_pool_profile?: [...close({
			auto_scaling_enabled?: bool
			count?:                number
			max_count?:            number
			max_pods?:             number
			min_count?:            number
			name?:                 string
			node_labels?: [string]: string
			node_public_ip_enabled?:   bool
			node_public_ip_prefix_id?: string
			node_taints?: [...string]
			orchestrator_version?: string
			os_disk_size_gb?:      number
			os_type?:              string
			tags?: [string]: string
			type?: string
			upgrade_settings?: [...close({
				drain_timeout_in_minutes?:      number
				max_surge?:                     string
				max_unavailable?:               string
				node_soak_duration_in_minutes?: number
				undrainable_node_behavior?:     string
			})]
			vm_size?:        string
			vnet_subnet_id?: string
			zones?: [...string]
		})]
		api_server_authorized_ip_ranges?: [...string]
		azure_active_directory_role_based_access_control?: [...close({
			admin_group_object_ids?: [...string]
			azure_rbac_enabled?: bool
			tenant_id?:          string
		})]
		azure_policy_enabled?:               bool
		current_kubernetes_version?:         string
		disk_encryption_set_id?:             string
		dns_prefix?:                         string
		fqdn?:                               string
		http_application_routing_enabled?:   bool
		http_application_routing_zone_name?: string
		id?:                                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		ingress_application_gateway?: [...close({
			effective_gateway_id?: string
			gateway_id?:           string
			gateway_name?:         string
			ingress_application_gateway_identity?: [...close({
				client_id?:                 string
				object_id?:                 string
				user_assigned_identity_id?: string
			})]
			subnet_cidr?: string
			subnet_id?:   string
		})]
		key_management_service?: [...close({
			key_vault_key_id?:         string
			key_vault_network_access?: string
		})]
		key_vault_secrets_provider?: [...close({
			secret_identity?: [...close({
				client_id?:                 string
				object_id?:                 string
				user_assigned_identity_id?: string
			})]
			secret_rotation_enabled?:  bool
			secret_rotation_interval?: string
		})]
		kube_admin_config?: [...close({
			client_certificate?:     string
			client_key?:             string
			cluster_ca_certificate?: string
			host?:                   string
			password?:               string
			username?:               string
		})]
		kube_admin_config_raw?: string
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
		kubernetes_version?: string
		linux_profile?: [...close({
			admin_username?: string
			ssh_key?: [...close({
				key_data?: string
			})]
		})]
		location?: string
		microsoft_defender?: [...close({
			log_analytics_workspace_id?: string
		})]
		name!: string
		network_profile?: [...close({
			dns_service_ip?:     string
			docker_bridge_cidr?: string
			load_balancer_sku?:  string
			network_plugin?:     string
			network_policy?:     string
			pod_cidr?:           string
			service_cidr?:       string
		})]
		node_resource_group?:    string
		node_resource_group_id?: string
		oidc_issuer_enabled?:    bool
		oidc_issuer_url?:        string
		oms_agent?: [...close({
			log_analytics_workspace_id?:      string
			msi_auth_for_monitoring_enabled?: bool
			oms_agent_identity?: [...close({
				client_id?:                 string
				object_id?:                 string
				user_assigned_identity_id?: string
			})]
		})]
		open_service_mesh_enabled?:         bool
		timeouts?:                          #timeouts
		private_cluster_enabled?:           bool
		private_fqdn?:                      string
		resource_group_name!:               string
		role_based_access_control_enabled?: bool
		service_mesh_profile?: [...close({
			certificate_authority?: [...close({
				cert_chain_object_name?: string
				cert_object_name?:       string
				key_object_name?:        string
				key_vault_id?:           string
				root_cert_object_name?:  string
			})]
			external_ingress_gateway_enabled?: bool
			internal_ingress_gateway_enabled?: bool
			mode?:                             string
			revisions?: [...string]
		})]
		service_principal?: [...close({
			client_id?: string
		})]
		storage_profile?: [...close({
			blob_driver_enabled?:         bool
			disk_driver_enabled?:         bool
			file_driver_enabled?:         bool
			snapshot_controller_enabled?: bool
		})]
		tags?: [string]: string
		windows_profile?: [...close({
			admin_username?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
