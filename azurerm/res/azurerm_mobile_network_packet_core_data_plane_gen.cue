package res

#azurerm_mobile_network_packet_core_data_plane: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_packet_core_data_plane")
	close({
		timeouts?:                                    #timeouts
		id?:                                          string
		location!:                                    string
		mobile_network_packet_core_control_plane_id!: string
		name!:                                        string
		tags?: [string]: string
		user_plane_access_ipv4_address?: string
		user_plane_access_ipv4_gateway?: string
		user_plane_access_ipv4_subnet?:  string
		user_plane_access_name?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
