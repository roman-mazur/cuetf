package res

import "list"

#azurerm_mobile_network_packet_core_control_plane: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_packet_core_control_plane")
	close({
		control_plane_access_ipv4_address?: string
		control_plane_access_ipv4_gateway?: string
		control_plane_access_ipv4_subnet?:  string
		control_plane_access_name?:         string
		core_network_technology?:           string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		id?:                             string
		interoperability_settings_json?: string
		location!:                       string
		name!:                           string
		resource_group_name!:            string
		local_diagnostics_access!: matchN(1, [#local_diagnostics_access, list.MaxItems(1) & [_, ...] & [...#local_diagnostics_access]])
		site_ids!: [...string]
		sku!:              string
		software_version?: string
		tags?: [string]: string
		user_equipment_mtu_in_bytes?: number
		platform?: matchN(1, [#platform, list.MaxItems(1) & [...#platform]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#local_diagnostics_access: close({
		authentication_type!:          string
		https_server_certificate_url?: string
	})

	#platform: close({
		arc_kubernetes_cluster_id?: string
		custom_location_id?:        string
		edge_device_id?:            string
		stack_hci_cluster_id?:      string
		type!:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
