package res

#azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association")
	close({
		timeouts?:       #timeouts
		certificate_id!: string
		id?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
