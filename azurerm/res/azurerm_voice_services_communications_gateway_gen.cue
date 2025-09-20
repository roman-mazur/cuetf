package res

#azurerm_voice_services_communications_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_voice_services_communications_gateway")
	close({
		api_bridge?:                             string
		auto_generated_domain_name_label_scope?: string
		codecs!:                                 string
		connectivity!:                           string
		e911_type!:                              string
		emergency_dial_strings?: [...string]
		id?:       string
		location!: string
		service_location?: matchN(1, [#service_location, [_, ...] & [...#service_location]])
		microsoft_teams_voicemail_pilot_number?: string
		name!:                                   string
		on_prem_mcp_enabled?:                    bool
		timeouts?:                               #timeouts
		platforms!: [...string]
		resource_group_name!: string
		tags?: [string]: string
	})

	#service_location: close({
		allowed_media_source_address_prefixes?: [...string]
		allowed_signaling_source_address_prefixes?: [...string]
		esrp_addresses?: [...string]
		location!: string
		operator_addresses!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
