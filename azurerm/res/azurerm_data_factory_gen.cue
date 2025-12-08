package res

import "list"

#azurerm_data_factory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory")
	close({
		customer_managed_key_id?:          string
		customer_managed_key_identity_id?: string
		id?:                               string
		location!:                         string
		github_configuration?: matchN(1, [#github_configuration, list.MaxItems(1) & [...#github_configuration]])
		managed_virtual_network_enabled?: bool
		name!:                            string
		global_parameter?: matchN(1, [#global_parameter, [...#global_parameter]])
		public_network_enabled?: bool
		purview_id?:             string
		resource_group_name!:    string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
		tags?: [string]: string
		vsts_configuration?: matchN(1, [#vsts_configuration, list.MaxItems(1) & [...#vsts_configuration]])
	})

	#github_configuration: close({
		account_name!:       string
		branch_name!:        string
		git_url?:            string
		publishing_enabled?: bool
		repository_name!:    string
		root_folder!:        string
	})

	#global_parameter: close({
		name!:  string
		type!:  string
		value!: string
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

	#vsts_configuration: close({
		account_name!:       string
		branch_name!:        string
		project_name!:       string
		publishing_enabled?: bool
		repository_name!:    string
		root_folder!:        string
		tenant_id!:          string
	})
}
