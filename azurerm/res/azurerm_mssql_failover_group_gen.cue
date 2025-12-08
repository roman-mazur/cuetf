package res

import "list"

#azurerm_mssql_failover_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_failover_group")
	close({
		partner_server!: matchN(1, [#partner_server, [_, ...] & [...#partner_server]])
		databases?: [...string]
		id?:                                        string
		name!:                                      string
		readonly_endpoint_failover_policy_enabled?: bool
		server_id!:                                 string
		tags?: [string]: string
		read_write_endpoint_failover_policy!: matchN(1, [#read_write_endpoint_failover_policy, list.MaxItems(1) & [_, ...] & [...#read_write_endpoint_failover_policy]])
		timeouts?: #timeouts
	})

	#partner_server: close({
		id!:       string
		location?: string
		role?:     string
	})

	#read_write_endpoint_failover_policy: close({
		grace_minutes?: number
		mode!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
