package res

import "list"

#azurerm_service_fabric_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_service_fabric_cluster")
	close({
		add_on_features?: [...string]
		cluster_code_version?:              string
		cluster_endpoint?:                  string
		id?:                                string
		location!:                          string
		management_endpoint!:               string
		name!:                              string
		reliability_level!:                 string
		resource_group_name!:               string
		service_fabric_zonal_upgrade_mode?: string
		tags?: [string]: string
		upgrade_mode!: string
		vm_image!:     string
		azure_active_directory?: matchN(1, [#azure_active_directory, list.MaxItems(1) & [...#azure_active_directory]])
		vmss_zonal_upgrade_mode?: string
		certificate?: matchN(1, [#certificate, list.MaxItems(1) & [...#certificate]])
		certificate_common_names?: matchN(1, [#certificate_common_names, list.MaxItems(1) & [...#certificate_common_names]])
		client_certificate_common_name?: matchN(1, [#client_certificate_common_name, [...#client_certificate_common_name]])
		client_certificate_thumbprint?: matchN(1, [#client_certificate_thumbprint, [...#client_certificate_thumbprint]])
		diagnostics_config?: matchN(1, [#diagnostics_config, list.MaxItems(1) & [...#diagnostics_config]])
		fabric_settings?: matchN(1, [#fabric_settings, [...#fabric_settings]])
		node_type?: matchN(1, [#node_type, [_, ...] & [...#node_type]])
		reverse_proxy_certificate?: matchN(1, [#reverse_proxy_certificate, list.MaxItems(1) & [...#reverse_proxy_certificate]])
		reverse_proxy_certificate_common_names?: matchN(1, [#reverse_proxy_certificate_common_names, list.MaxItems(1) & [...#reverse_proxy_certificate_common_names]])
		timeouts?: #timeouts
		upgrade_policy?: matchN(1, [#upgrade_policy, list.MaxItems(1) & [...#upgrade_policy]])
	})

	#azure_active_directory: close({
		client_application_id!:  string
		cluster_application_id!: string
		tenant_id!:              string
	})

	#certificate: close({
		thumbprint!:           string
		thumbprint_secondary?: string
		x509_store_name!:      string
	})

	#certificate_common_names: close({
		common_names?: matchN(1, [_#defs."/$defs/certificate_common_names/$defs/common_names", [_, ...] & [..._#defs."/$defs/certificate_common_names/$defs/common_names"]])
		x509_store_name!: string
	})

	#client_certificate_common_name: close({
		common_name!:       string
		is_admin!:          bool
		issuer_thumbprint?: string
	})

	#client_certificate_thumbprint: close({
		is_admin!:   bool
		thumbprint!: string
	})

	#diagnostics_config: close({
		blob_endpoint!:              string
		protected_account_key_name!: string
		queue_endpoint!:             string
		storage_account_name!:       string
		table_endpoint!:             string
	})

	#fabric_settings: close({
		name!: string
		parameters?: [string]: string
	})

	#node_type: close({
		capacities?: [string]: string
		client_endpoint_port!: number
		durability_level?:     string
		http_endpoint_port!:   number
		instance_count!:       number
		is_primary!:           bool
		application_ports?: matchN(1, [_#defs."/$defs/node_type/$defs/application_ports", list.MaxItems(1) & [..._#defs."/$defs/node_type/$defs/application_ports"]])
		is_stateless?:                bool
		multiple_availability_zones?: bool
		ephemeral_ports?: matchN(1, [_#defs."/$defs/node_type/$defs/ephemeral_ports", list.MaxItems(1) & [..._#defs."/$defs/node_type/$defs/ephemeral_ports"]])
		name!: string
		placement_properties?: [string]: string
		reverse_proxy_endpoint_port?: number
	})

	#reverse_proxy_certificate: close({
		thumbprint!:           string
		thumbprint_secondary?: string
		x509_store_name!:      string
	})

	#reverse_proxy_certificate_common_names: close({
		common_names?: matchN(1, [_#defs."/$defs/reverse_proxy_certificate_common_names/$defs/common_names", [_, ...] & [..._#defs."/$defs/reverse_proxy_certificate_common_names/$defs/common_names"]])
		x509_store_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#upgrade_policy: close({
		delta_health_policy?: matchN(1, [_#defs."/$defs/upgrade_policy/$defs/delta_health_policy", list.MaxItems(1) & [..._#defs."/$defs/upgrade_policy/$defs/delta_health_policy"]])
		force_restart_enabled?:             bool
		health_check_retry_timeout?:        string
		health_check_stable_duration?:      string
		health_check_wait_duration?:        string
		upgrade_domain_timeout?:            string
		upgrade_replica_set_check_timeout?: string
		upgrade_timeout?:                   string
		health_policy?: matchN(1, [_#defs."/$defs/upgrade_policy/$defs/health_policy", list.MaxItems(1) & [..._#defs."/$defs/upgrade_policy/$defs/health_policy"]])
	})

	_#defs: "/$defs/certificate_common_names/$defs/common_names": close({
		certificate_common_name!:       string
		certificate_issuer_thumbprint?: string
	})

	_#defs: "/$defs/node_type/$defs/application_ports": close({
		end_port!:   number
		start_port!: number
	})

	_#defs: "/$defs/node_type/$defs/ephemeral_ports": close({
		end_port!:   number
		start_port!: number
	})

	_#defs: "/$defs/reverse_proxy_certificate_common_names/$defs/common_names": close({
		certificate_common_name!:       string
		certificate_issuer_thumbprint?: string
	})

	_#defs: "/$defs/upgrade_policy/$defs/delta_health_policy": close({
		max_delta_unhealthy_applications_percent?:         number
		max_delta_unhealthy_nodes_percent?:                number
		max_upgrade_domain_delta_unhealthy_nodes_percent?: number
	})

	_#defs: "/$defs/upgrade_policy/$defs/health_policy": close({
		max_unhealthy_applications_percent?: number
		max_unhealthy_nodes_percent?:        number
	})
}
