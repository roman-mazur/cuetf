package res

#azurerm_postgresql_flexible_server_virtual_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_flexible_server_virtual_endpoint")
	close({
		id?: string

		// The name of the Virtual Endpoint
		name!: string

		// The Resource ID of the *Replica* Postgres Flexible Server this
		// should be associated with
		replica_server_id!: string

		// The Resource ID of the *Source* Postgres Flexible Server this
		// should be associated with
		source_server_id!: string
		timeouts?:         #timeouts

		// The type of Virtual Endpoint
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
