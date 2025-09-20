package data

#azurerm_automation_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_account")
	close({
		timeouts?:           #timeouts
		endpoint?:           string
		hybrid_service_url?: string
		id?:                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!:        string
		primary_key?: string
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		resource_group_name!: string
		secondary_key?:       string
	})

	#timeouts: close({
		read?: string
	})
}
