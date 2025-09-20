package res

#azurerm_mssql_outbound_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_outbound_firewall_rule")
	close({
		timeouts?:  #timeouts
		id?:        string
		name!:      string
		server_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
