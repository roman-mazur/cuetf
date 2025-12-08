package res

#azurerm_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_lb")
	close({
		edge_zone?:          string
		id?:                 string
		location!:           string
		name!:               string
		private_ip_address?: string
		private_ip_addresses?: [...string]
		frontend_ip_configuration?: matchN(1, [#frontend_ip_configuration, [...#frontend_ip_configuration]])
		public_ip_address_id?: string
		timeouts?:             #timeouts
		resource_group_name!:  string
		sku?:                  string
		sku_tier?:             string
		subnet_id?:            string
		tags?: [string]: string
	})

	#frontend_ip_configuration: close({
		gateway_load_balancer_frontend_ip_configuration_id?: string
		id?:                                                 string
		inbound_nat_rules?: [...string]
		load_balancer_rules?: [...string]
		name!: string
		outbound_rules?: [...string]
		private_ip_address?:            string
		private_ip_address_allocation?: string
		private_ip_address_version?:    string
		public_ip_address_id?:          string
		public_ip_prefix_id?:           string
		subnet_id?:                     string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
