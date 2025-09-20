package data

#azurerm_nat_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_nat_gateway")
	close({
		id?:                      string
		idle_timeout_in_minutes?: number
		location?:                string
		name!:                    string
		public_ip_address_ids?: [...string]
		public_ip_prefix_ids?: [...string]
		resource_group_name!: string
		resource_guid?:       string
		sku_name?:            string
		timeouts?:            #timeouts
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
