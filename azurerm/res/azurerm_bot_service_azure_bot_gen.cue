package res

#azurerm_bot_service_azure_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_service_azure_bot")
	close({
		cmk_key_vault_key_url?:                 string
		developer_app_insights_api_key?:        string
		developer_app_insights_application_id?: string
		developer_app_insights_key?:            string
		display_name?:                          string
		endpoint?:                              string
		icon_url?:                              string
		id?:                                    string
		local_authentication_enabled?:          bool
		location!:                              string
		luis_app_ids?: [...string]
		luis_key?:                      string
		microsoft_app_id!:              string
		microsoft_app_msi_id?:          string
		microsoft_app_tenant_id?:       string
		microsoft_app_type?:            string
		name!:                          string
		public_network_access_enabled?: bool
		timeouts?:                      #timeouts
		resource_group_name!:           string
		sku!:                           string
		streaming_endpoint_enabled?:    bool
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
