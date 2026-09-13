package data

azurerm_automation_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_automation_account")
	close({
		timeouts?:                 #timeouts
		dsc_primary_access_key?:   string
		dsc_secondary_access_key?: string
		dsc_server_endpoint?:      string
		encryption?: [...close({
			key_vault_key_id?:          string
			user_assigned_identity_id?: string
		})]
		endpoint?:           string
		hybrid_service_url?: string
		id?:                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		local_authentication_enabled?: bool
		location?:                     string
		name!:                         string
		primary_key?:                  string
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		public_network_access_enabled?: bool
		resource_group_name!:           string
		secondary_key?:                 string
		sku_name?:                      string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
