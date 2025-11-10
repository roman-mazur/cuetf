package res

import "list"

#azurerm_iothub_dps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_dps")
	close({
		allocation_policy?:             string
		data_residency_enabled?:        bool
		device_provisioning_host_name?: string
		id?:                            string
		id_scope?:                      string
		location!:                      string
		name!:                          string
		public_network_access_enabled?: bool
		ip_filter_rule?: matchN(1, [#ip_filter_rule, [...#ip_filter_rule]])
		resource_group_name!: string
		linked_hub?: matchN(1, [#linked_hub, [...#linked_hub]])
		service_operations_host_name?: string
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#ip_filter_rule: close({
		action!:  string
		ip_mask!: string
		name!:    string
		target?:  string
	})

	#linked_hub: close({
		allocation_weight?:       number
		apply_allocation_policy?: bool
		connection_string!:       string
		hostname?:                string
		location!:                string
	})

	#sku: close({
		capacity!: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
