package data

#azurerm_mssql_failover_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_mssql_failover_group")
	close({
		timeouts?: #timeouts
		databases?: [...string]
		id?:   string
		name!: string
		partner_server?: [...close({
			id?:       string
			location?: string
			role?:     string
		})]
		read_write_endpoint_failover_policy?: [...close({
			grace_minutes?: number
			mode?:          string
		})]
		readonly_endpoint_failover_policy_enabled?: bool
		server_id!:                                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
