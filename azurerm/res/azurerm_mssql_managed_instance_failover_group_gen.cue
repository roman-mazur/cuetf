package res

import "list"

#azurerm_mssql_managed_instance_failover_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_managed_instance_failover_group")
	close({
		id?:                  string
		location!:            string
		managed_instance_id!: string
		name!:                string
		read_write_endpoint_failover_policy!: matchN(1, [#read_write_endpoint_failover_policy, list.MaxItems(1) & [_, ...] & [...#read_write_endpoint_failover_policy]])
		partner_managed_instance_id!: string
		partner_region?: [...close({
			location?: string
			role?:     string
		})]
		readonly_endpoint_failover_policy_enabled?: bool
		role?:                                      string
		secondary_type?:                            string
		timeouts?:                                  #timeouts
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
