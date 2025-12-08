package res

import "list"

#azurerm_mssql_virtual_machine_availability_group_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_virtual_machine_availability_group_listener")
	close({
		availability_group_name?:      string
		id?:                           string
		name!:                         string
		port?:                         number
		sql_virtual_machine_group_id!: string
		load_balancer_configuration?: matchN(1, [#load_balancer_configuration, list.MaxItems(1) & [...#load_balancer_configuration]])
		multi_subnet_ip_configuration?: matchN(1, [#multi_subnet_ip_configuration, [...#multi_subnet_ip_configuration]])
		replica!: matchN(1, [#replica, [_, ...] & [...#replica]])
		timeouts?: #timeouts
	})

	#load_balancer_configuration: close({
		load_balancer_id!:   string
		private_ip_address!: string
		probe_port!:         number
		sql_virtual_machine_ids!: [...string]
		subnet_id!: string
	})

	#multi_subnet_ip_configuration: close({
		private_ip_address!:     string
		sql_virtual_machine_id!: string
		subnet_id!:              string
	})

	#replica: close({
		commit!:                 string
		failover_mode!:          string
		readable_secondary!:     string
		role!:                   string
		sql_virtual_machine_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
