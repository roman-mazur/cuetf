package res

#azurerm_palo_alto_local_rulestack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_palo_alto_local_rulestack")
	close({
		anti_spyware_profile?:  string
		anti_virus_profile?:    string
		description?:           string
		dns_subscription?:      string
		file_blocking_profile?: string
		id?:                    string
		location!:              string
		name!:                  string
		resource_group_name!:   string
		timeouts?:              #timeouts
		url_filtering_profile?: string
		vulnerability_profile?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
