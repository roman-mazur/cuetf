package data

#azurerm_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_virtual_machine")
	close({
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:           string
		name!:               string
		power_state?:        string
		private_ip_address?: string
		private_ip_addresses?: [...string]
		timeouts?:          #timeouts
		public_ip_address?: string
		public_ip_addresses?: [...string]
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
