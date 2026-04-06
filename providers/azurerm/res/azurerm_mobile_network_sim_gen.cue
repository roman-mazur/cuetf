package res

#azurerm_mobile_network_sim: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_sim")
	close({
		authentication_key!:                       string
		device_type?:                              string
		id?:                                       string
		integrated_circuit_card_identifier!:       string
		international_mobile_subscriber_identity!: string
		mobile_network_sim_group_id!:              string
		static_ip_configuration?: matchN(1, [#static_ip_configuration, [...#static_ip_configuration]])
		name!:                   string
		timeouts?:               #timeouts
		operator_key_code!:      string
		sim_policy_id?:          string
		sim_state?:              string
		vendor_key_fingerprint?: string
		vendor_name?:            string
	})

	#static_ip_configuration: close({
		attached_data_network_id!: string
		slice_id!:                 string
		static_ipv4_address?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
