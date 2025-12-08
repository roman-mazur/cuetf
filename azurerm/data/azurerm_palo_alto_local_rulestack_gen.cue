package data

#azurerm_palo_alto_local_rulestack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_palo_alto_local_rulestack")
	close({
		anti_spyware_profile?:         string
		anti_virus_profile?:           string
		description?:                  string
		dns_subscription?:             string
		file_blocking_profile?:        string
		id?:                           string
		location?:                     string
		name!:                         string
		timeouts?:                     #timeouts
		outbound_trust_certificate?:   string
		outbound_untrust_certificate?: string
		resource_group_name!:          string
		url_filtering_profile?:        string
		vulnerability_profile?:        string
	})

	#timeouts: close({
		read?: string
	})
}
