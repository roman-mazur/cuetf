package data

#azurerm_postgresql_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_server")
	close({
		administrator_login?: string
		fqdn?:                string
		id?:                  string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		sku_name?:            string
		tags?: [string]: string
		version?: string
	})

	#timeouts: close({
		read?: string
	})
}
