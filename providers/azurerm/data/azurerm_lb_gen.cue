package data

#azurerm_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_lb")
	close({
		timeouts?: #timeouts
		frontend_ip_configuration?: [...close({
			id?:                            string
			name?:                          string
			private_ip_address?:            string
			private_ip_address_allocation?: string
			private_ip_address_version?:    string
			public_ip_address_id?:          string
			subnet_id?:                     string
			zones?: [...string]
		})]
		id?:                 string
		location?:           string
		name!:               string
		private_ip_address?: string
		private_ip_addresses?: [...string]
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
