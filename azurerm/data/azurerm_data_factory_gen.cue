package data

#azurerm_data_factory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory")
	close({
		timeouts?: #timeouts
		github_configuration?: [...close({
			account_name?:    string
			branch_name?:     string
			git_url?:         string
			repository_name?: string
			root_folder?:     string
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		vsts_configuration?: [...close({
			account_name?:    string
			branch_name?:     string
			project_name?:    string
			repository_name?: string
			root_folder?:     string
			tenant_id?:       string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
