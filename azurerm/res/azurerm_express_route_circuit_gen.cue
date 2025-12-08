package res

import "list"

#azurerm_express_route_circuit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_express_route_circuit")
	close({
		allow_classic_operations?: bool
		authorization_key?:        string
		bandwidth_in_gbps?:        number
		bandwidth_in_mbps?:        number
		express_route_port_id?:    string
		id?:                       string
		location!:                 string
		name!:                     string
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		peering_location?:                    string
		rate_limiting_enabled?:               bool
		resource_group_name!:                 string
		timeouts?:                            #timeouts
		service_key?:                         string
		service_provider_name?:               string
		service_provider_provisioning_state?: string
		tags?: [string]: string
	})

	#sku: close({
		family!: string
		tier!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
