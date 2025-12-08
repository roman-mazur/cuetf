package data

#azurerm_public_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_public_ips")
	close({
		timeouts?:          #timeouts
		allocation_type?:   string
		attachment_status?: string
		id?:                string
		name_prefix?:       string
		public_ips?: [...close({
			domain_name_label?: string
			fqdn?:              string
			id?:                string
			ip_address?:        string
			name?:              string
		})]
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
