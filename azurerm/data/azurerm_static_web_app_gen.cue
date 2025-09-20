package data

#azurerm_static_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_static_web_app")
	close({
		api_key?: string
		app_settings?: [string]: string
		basic_auth?: [...close({
			environments?: string
		})]
		configuration_file_changes_enabled?: bool
		default_host_name?:                  string
		id?:                                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                      string
		name!:                          string
		preview_environments_enabled?:  bool
		public_network_access_enabled?: bool
		repository_branch?:             string
		timeouts?:                      #timeouts
		repository_url?:                string
		resource_group_name!:           string
		sku_size?:                      string
		sku_tier?:                      string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
