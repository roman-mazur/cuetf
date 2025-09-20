package res

#azurerm_orbital_contact_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_orbital_contact_profile")
	close({
		auto_tracking!:                     string
		event_hub_uri?:                     string
		id?:                                string
		location!:                          string
		minimum_elevation_degrees?:         number
		minimum_variable_contact_duration!: string
		name!:                              string
		links?: matchN(1, [#links, [_, ...] & [...#links]])
		network_configuration_subnet_id!: string
		timeouts?:                        #timeouts
		resource_group_name!:             string
		tags?: [string]: string
	})

	#links: close({
		channels?: matchN(1, [_#defs."/$defs/links/$defs/channels", [_, ...] & [..._#defs."/$defs/links/$defs/channels"]])
		direction!:    string
		name!:         string
		polarization!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/links/$defs/channels": close({
		end_point?: matchN(1, [_#defs."/$defs/links/$defs/channels/$defs/end_point", [_, ...] & [..._#defs."/$defs/links/$defs/channels/$defs/end_point"]])
		bandwidth_mhz!:              number
		center_frequency_mhz!:       number
		demodulation_configuration?: string
		modulation_configuration?:   string
		name!:                       string
	})

	_#defs: "/$defs/links/$defs/channels/$defs/end_point": close({
		end_point_name!: string
		ip_address?:     string
		port!:           string
		protocol!:       string
	})
}
