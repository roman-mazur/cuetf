package res

#azurerm_key_vault_certificate_contacts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_key_vault_certificate_contacts")
	close({
		contact?: matchN(1, [#contact, [...#contact]])
		timeouts?:     #timeouts
		id?:           string
		key_vault_id!: string
	})

	#contact: close({
		email!: string
		name?:  string
		phone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
