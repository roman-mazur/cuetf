package res

#azurerm_mssql_managed_instance_active_directory_administrator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_managed_instance_active_directory_administrator")
	close({
		timeouts?:                    #timeouts
		azuread_authentication_only?: bool
		id?:                          string
		login_username!:              string
		managed_instance_id!:         string
		object_id!:                   string
		tenant_id!:                   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
