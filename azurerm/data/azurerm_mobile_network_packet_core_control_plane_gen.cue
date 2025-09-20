package data

#azurerm_mobile_network_packet_core_control_plane: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_packet_core_control_plane")
	close({
		control_plane_access_ipv4_address?: string
		control_plane_access_ipv4_gateway?: string
		control_plane_access_ipv4_subnet?:  string
		control_plane_access_name?:         string
		core_network_technology?:           string
		id?:                                string
		identity?: [...close({
			identity_ids?: [...string]
			type?: string
		})]
		interoperability_settings_json?: string
		local_diagnostics_access?: [...close({
			authentication_type?:          string
			https_server_certificate_url?: string
		})]
		location?: string
		name!:     string
		platform?: [...close({
			arc_kubernetes_cluster_id?: string
			custom_location_id?:        string
			edge_device_id?:            string
			stack_hci_cluster_id?:      string
			type?:                      string
		})]
		resource_group_name!: string
		site_ids?: [...string]
		sku?:              string
		timeouts?:         #timeouts
		software_version?: string
		tags?: [string]: string
		user_equipment_mtu_in_bytes?: number
	})

	#timeouts: close({
		read?: string
	})
}
