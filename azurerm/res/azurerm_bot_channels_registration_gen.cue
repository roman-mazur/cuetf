package res

#azurerm_bot_channels_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_channels_registration")
	close({
		cmk_key_vault_url?:                     string
		description?:                           string
		developer_app_insights_api_key?:        string
		developer_app_insights_application_id?: string
		developer_app_insights_key?:            string
		display_name?:                          string
		endpoint?:                              string
		icon_url?:                              string
		id?:                                    string
		location!:                              string
		microsoft_app_id!:                      string
		name!:                                  string
		timeouts?:                              #timeouts
		public_network_access_enabled?:         bool
		resource_group_name!:                   string
		sku!:                                   string
		streaming_endpoint_enabled?:            bool
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
