package res

import "list"

#azurerm_stack_hci_deployment_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stack_hci_deployment_setting")
	close({
		scale_unit!: matchN(1, [#scale_unit, [_, ...] & [...#scale_unit]])
		arc_resource_ids!: [...string]
		id?:                   string
		stack_hci_cluster_id!: string
		version!:              string
		timeouts?:             #timeouts
	})

	#scale_unit: close({
		active_directory_organizational_unit_path!: string
		bitlocker_boot_volume_enabled?:             bool
		bitlocker_data_volume_enabled?:             bool
		credential_guard_enabled?:                  bool
		domain_fqdn!:                               string
		drift_control_enabled?:                     bool
		drtm_protection_enabled?:                   bool
		episodic_data_upload_enabled?:              bool
		eu_location_enabled?:                       bool
		hvci_protection_enabled?:                   bool
		name_prefix!:                               string
		secrets_location!:                          string
		side_channel_mitigation_enabled?:           bool
		cluster!: matchN(1, [_#defs."/$defs/scale_unit/$defs/cluster", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/scale_unit/$defs/cluster"]])
		smb_cluster_encryption_enabled?: bool
		smb_signing_enabled?:            bool
		streaming_data_client_enabled?:  bool
		host_network!: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/scale_unit/$defs/host_network"]])
		wdac_enabled?: bool
		infrastructure_network!: matchN(1, [_#defs."/$defs/scale_unit/$defs/infrastructure_network", [_, ...] & [..._#defs."/$defs/scale_unit/$defs/infrastructure_network"]])
		optional_service!: matchN(1, [_#defs."/$defs/scale_unit/$defs/optional_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/scale_unit/$defs/optional_service"]])
		physical_node!: matchN(1, [_#defs."/$defs/scale_unit/$defs/physical_node", [_, ...] & [..._#defs."/$defs/scale_unit/$defs/physical_node"]])
		storage!: matchN(1, [_#defs."/$defs/scale_unit/$defs/storage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/scale_unit/$defs/storage"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/scale_unit/$defs/cluster": close({
		azure_service_endpoint!: string
		cloud_account_name!:     string
		name!:                   string
		witness_path!:           string
		witness_type!:           string
	})

	_#defs: "/$defs/scale_unit/$defs/host_network": close({
		intent!: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network/$defs/intent", [_, ...] & [..._#defs."/$defs/scale_unit/$defs/host_network/$defs/intent"]])
		storage_network!: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network/$defs/storage_network", [_, ...] & [..._#defs."/$defs/scale_unit/$defs/host_network/$defs/storage_network"]])
		storage_auto_ip_enabled?:                 bool
		storage_connectivity_switchless_enabled?: bool
	})

	_#defs: "/$defs/scale_unit/$defs/host_network/$defs/intent": close({
		adapter_property_override?: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/adapter_property_override", list.MaxItems(1) & [..._#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/adapter_property_override"]])
		adapter!: [...string]
		adapter_property_override_enabled?: bool
		name!:                              string
		qos_policy_override_enabled?:       bool
		traffic_type!: [...string]
		virtual_switch_configuration_override_enabled?: bool
		qos_policy_override?: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/qos_policy_override", list.MaxItems(1) & [..._#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/qos_policy_override"]])
		virtual_switch_configuration_override?: matchN(1, [_#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/virtual_switch_configuration_override", list.MaxItems(1) & [..._#defs."/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/virtual_switch_configuration_override"]])
	})

	_#defs: "/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/adapter_property_override": close({
		jumbo_packet?:              string
		network_direct?:            string
		network_direct_technology?: string
	})

	_#defs: "/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/qos_policy_override": close({
		bandwidth_percentage_smb?:          string
		priority_value8021_action_cluster?: string
		priority_value8021_action_smb?:     string
	})

	_#defs: "/$defs/scale_unit/$defs/host_network/$defs/intent/$defs/virtual_switch_configuration_override": close({
		enable_iov?:               string
		load_balancing_algorithm?: string
	})

	_#defs: "/$defs/scale_unit/$defs/host_network/$defs/storage_network": close({
		name!:                 string
		network_adapter_name!: string
		vlan_id!:              string
	})

	_#defs: "/$defs/scale_unit/$defs/infrastructure_network": close({
		ip_pool!: matchN(1, [_#defs."/$defs/scale_unit/$defs/infrastructure_network/$defs/ip_pool", [_, ...] & [..._#defs."/$defs/scale_unit/$defs/infrastructure_network/$defs/ip_pool"]])
		dhcp_enabled?: bool
		dns_server!: [...string]
		gateway!:     string
		subnet_mask!: string
	})

	_#defs: "/$defs/scale_unit/$defs/infrastructure_network/$defs/ip_pool": close({
		ending_address!:   string
		starting_address!: string
	})

	_#defs: "/$defs/scale_unit/$defs/optional_service": close({
		custom_location!: string
	})

	_#defs: "/$defs/scale_unit/$defs/physical_node": close({
		ipv4_address!: string
		name!:         string
	})

	_#defs: "/$defs/scale_unit/$defs/storage": close({
		configuration_mode!: string
	})
}
