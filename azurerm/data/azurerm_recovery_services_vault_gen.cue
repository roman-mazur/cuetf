package data

#azurerm_recovery_services_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_recovery_services_vault")
	close({
		timeouts?: #timeouts
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
