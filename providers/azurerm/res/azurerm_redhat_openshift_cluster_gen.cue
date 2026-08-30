package res

import "list"

azurerm_redhat_openshift_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_redhat_openshift_cluster")
	close({
		api_server_profile!: matchN(1, [#api_server_profile, list.MaxItems(1) & [_, ...] & [...#api_server_profile]])
		cluster_profile!: matchN(1, [#cluster_profile, list.MaxItems(1) & [_, ...] & [...#cluster_profile]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ingress_profile!: matchN(1, [#ingress_profile, list.MaxItems(1) & [_, ...] & [...#ingress_profile]])
		main_profile!: matchN(1, [#main_profile, list.MaxItems(1) & [_, ...] & [...#main_profile]])
		network_profile!: matchN(1, [#network_profile, list.MaxItems(1) & [_, ...] & [...#network_profile]])
		platform_workload_identity_profile?: matchN(1, [#platform_workload_identity_profile, list.MaxItems(1) & [...#platform_workload_identity_profile]])
		service_principal?: matchN(1, [#service_principal, list.MaxItems(1) & [...#service_principal]])
		timeouts?: #timeouts
		worker_profile!: matchN(1, [#worker_profile, list.MaxItems(1) & [_, ...] & [...#worker_profile]])
		console_url?:         string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#api_server_profile: close({
		ip_address?: string
		url?:        string
		visibility!: string
	})

	#cluster_profile: close({
		domain!:                      string
		fips_enabled?:                bool
		managed_resource_group_name?: string
		pull_secret?:                 string
		resource_group_id?:           string
		version!:                     string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#ingress_profile: close({
		ip_address?: string
		name?:       string
		visibility!: string
	})

	#main_profile: close({
		disk_encryption_set_id?:     string
		encryption_at_host_enabled?: bool
		subnet_id!:                  string
		vm_size!:                    string
	})

	#network_profile: close({
		load_balancer_profile?: matchN(1, [_#defs."/$defs/network_profile/$defs/load_balancer_profile", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/load_balancer_profile"]])
		outbound_type?:                                string
		pod_cidr!:                                     string
		preconfigured_network_security_group_enabled?: bool
		service_cidr!:                                 string
	})

	#platform_workload_identity_profile: close({
		platform_workload_identity!: matchN(1, [_#defs."/$defs/platform_workload_identity_profile/$defs/platform_workload_identity", [_, ...] & [..._#defs."/$defs/platform_workload_identity_profile/$defs/platform_workload_identity"]])
		upgradeable_to?: string
	})

	#service_principal: close({
		client_id!:     string
		client_secret!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#worker_profile: close({
		disk_encryption_set_id?:     string
		disk_size_gb!:               number
		encryption_at_host_enabled?: bool
		node_count!:                 number
		subnet_id!:                  string
		vm_size!:                    string
	})

	_#defs: "/$defs/network_profile/$defs/load_balancer_profile": close({
		effective_outbound_ips?: [...string]
		managed_outbound_ip_count!: number
	})

	_#defs: "/$defs/platform_workload_identity_profile/$defs/platform_workload_identity": close({
		client_id?:   string
		identity_id!: string
		name!:        string
		object_id?:   string
	})
}
