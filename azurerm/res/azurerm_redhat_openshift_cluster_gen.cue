package res

import "list"

#azurerm_redhat_openshift_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redhat_openshift_cluster")
	close({
		api_server_profile?: matchN(1, [#api_server_profile, list.MaxItems(1) & [_, ...] & [...#api_server_profile]])
		cluster_profile?: matchN(1, [#cluster_profile, list.MaxItems(1) & [_, ...] & [...#cluster_profile]])
		console_url?: string
		id?:          string
		location!:    string
		name!:        string
		ingress_profile?: matchN(1, [#ingress_profile, list.MaxItems(1) & [_, ...] & [...#ingress_profile]])
		main_profile?: matchN(1, [#main_profile, list.MaxItems(1) & [_, ...] & [...#main_profile]])
		network_profile?: matchN(1, [#network_profile, list.MaxItems(1) & [_, ...] & [...#network_profile]])
		service_principal?: matchN(1, [#service_principal, list.MaxItems(1) & [_, ...] & [...#service_principal]])
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		worker_profile?: matchN(1, [#worker_profile, list.MaxItems(1) & [_, ...] & [...#worker_profile]])
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
		outbound_type?:                                string
		pod_cidr!:                                     string
		preconfigured_network_security_group_enabled?: bool
		service_cidr!:                                 string
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
}
