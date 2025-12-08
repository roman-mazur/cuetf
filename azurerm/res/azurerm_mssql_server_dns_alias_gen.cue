package res

#azurerm_mssql_server_dns_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_server_dns_alias")
	close({
		timeouts?:        #timeouts
		dns_record?:      string
		id?:              string
		mssql_server_id!: string
		name!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
