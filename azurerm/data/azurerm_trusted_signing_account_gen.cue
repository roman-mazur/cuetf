package data

#azurerm_trusted_signing_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_trusted_signing_account")
	close({
		timeouts?:            #timeouts
		account_uri?:         string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		sku_name?:            string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
