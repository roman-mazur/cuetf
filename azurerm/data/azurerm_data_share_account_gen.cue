package data

#azurerm_data_share_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share_account")
	close({
		timeouts?: #timeouts
		id?:       string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
