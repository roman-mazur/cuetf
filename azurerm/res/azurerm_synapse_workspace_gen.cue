package res

import "list"

#azurerm_synapse_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_workspace")
	close({
		azuread_authentication_only?: bool
		compute_subnet_id?:           string
		connectivity_endpoints?: [string]: string
		data_exfiltration_protection_enabled?: bool
		id?:                                   string
		linking_allowed_for_aad_tenant_ids?: [...string]
		location!:                        string
		managed_resource_group_name?:     string
		managed_virtual_network_enabled?: bool
		name!:                            string
		public_network_access_enabled?:   bool
		azure_devops_repo?: matchN(1, [#azure_devops_repo, list.MaxItems(1) & [...#azure_devops_repo]])
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		purview_id?:                           string
		resource_group_name!:                  string
		sql_administrator_login?:              string
		sql_administrator_login_password?:     string
		sql_identity_control_enabled?:         bool
		storage_data_lake_gen2_filesystem_id!: string
		tags?: [string]: string
		github_repo?: matchN(1, [#github_repo, list.MaxItems(1) & [...#github_repo]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
	})

	#azure_devops_repo: close({
		account_name!:    string
		branch_name!:     string
		last_commit_id?:  string
		project_name!:    string
		repository_name!: string
		root_folder!:     string
		tenant_id?:       string
	})

	#customer_managed_key: close({
		key_name?:                  string
		key_versionless_id!:        string
		user_assigned_identity_id?: string
	})

	#github_repo: close({
		account_name!:    string
		branch_name!:     string
		git_url?:         string
		last_commit_id?:  string
		repository_name!: string
		root_folder!:     string
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
