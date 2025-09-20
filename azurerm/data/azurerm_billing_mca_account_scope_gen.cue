package data

#azurerm_billing_mca_account_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_billing_mca_account_scope")
	close({
		timeouts?:             #timeouts
		billing_account_name!: string
		billing_profile_name!: string
		id?:                   string
		invoice_section_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
