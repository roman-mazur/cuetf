package res

#azurerm_palo_alto_local_rulestack_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_local_rulestack_certificate")
	close({
		timeouts?:                 #timeouts
		audit_comment?:            string
		description?:              string
		id?:                       string
		key_vault_certificate_id?: string
		name!:                     string
		rulestack_id!:             string
		self_signed?:              bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
