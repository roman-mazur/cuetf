package res

import "list"

azurerm_kubernetes_automatic_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_automatic_cluster")
	close({
		api_server_access?: matchN(1, [#api_server_access, list.MaxItems(1) & [...#api_server_access]])
		hosted_system?: matchN(1, [#hosted_system, list.MaxItems(1) & [...#hosted_system]])
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		private_cluster?: matchN(1, [#private_cluster, list.MaxItems(1) & [...#private_cluster]])
		service_mesh?: matchN(1, [#service_mesh, list.MaxItems(1) & [...#service_mesh]])
		timeouts?: #timeouts
		web_app_routing_ingress?: matchN(1, [#web_app_routing_ingress, list.MaxItems(1) & [...#web_app_routing_ingress]])
		current_kubernetes_version?:  string
		fully_qualified_domain_name?: string
		id?:                          string
		kube_config?: [...close({
			client_certificate?:     string
			client_key?:             string
			cluster_ca_certificate?: string
			host?:                   string
			password?:               string
			username?:               string
		})]
		kube_config_raw?:                     string
		location!:                            string
		name!:                                string
		node_resource_group_id?:              string
		oidc_issuer_url?:                     string
		portal_fully_qualified_domain_name?:  string
		private_fully_qualified_domain_name?: string
		resource_group_name!:                 string
		tags?: [string]: string
	})

	#api_server_access: close({
		authorized_ip_ranges?: [...string]
		subnet_id?: string
	})

	#hosted_system: close({
		node_subnet_id!:        string
		system_node_subnet_id!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#private_cluster: close({
		private_dns_zone_id?:                        string
		public_fully_qualified_domain_name_enabled?: bool
	})

	#service_mesh: close({
		certificate_authority?: matchN(1, [_#defs."/$defs/service_mesh/$defs/certificate_authority", list.MaxItems(1) & [..._#defs."/$defs/service_mesh/$defs/certificate_authority"]])
		external_ingress_gateway_enabled?: bool
		internal_ingress_gateway_enabled?: bool
		proxy_redirect_mechanism?:         string
		revisions!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#web_app_routing_ingress: close({
		default_nginx_controller?: string
		dns_zone_ids?: [...string]
		istio_enabled?: bool
		web_app_routing_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
	})

	_#defs: "/$defs/service_mesh/$defs/certificate_authority": close({
		certificate_chain_object_name!: string
		certificate_object_name!:       string
		key_object_name!:               string
		key_vault_id!:                  string
		root_certificate_object_name!:  string
	})
}
