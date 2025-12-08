package res

import "list"

#azurerm_static_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_static_web_app")
	close({
		api_key?: string
		app_settings?: [string]: string
		configuration_file_changes_enabled?: bool
		default_host_name?:                  string
		id?:                                 string
		location!:                           string
		name!:                               string
		preview_environments_enabled?:       bool
		public_network_access_enabled?:      bool
		basic_auth?: matchN(1, [#basic_auth, list.MaxItems(1) & [...#basic_auth]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		repository_branch?:   string
		timeouts?:            #timeouts
		repository_token?:    string
		repository_url?:      string
		resource_group_name!: string
		sku_size?:            string
		sku_tier?:            string
		tags?: [string]: string
	})

	#basic_auth: close({
		environments!: string
		password!:     string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
