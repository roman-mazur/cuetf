package res

#azurerm_cosmosdb_postgresql_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_postgresql_firewall_rule")
	close({
		timeouts?:         #timeouts
		cluster_id!:       string
		end_ip_address!:   string
		id?:               string
		name!:             string
		start_ip_address!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
