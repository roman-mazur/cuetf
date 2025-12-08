package data

#azurerm_mssql_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_mssql_server")
	close({
		administrator_login?:                      string
		express_vulnerability_assessment_enabled?: bool
		fully_qualified_domain_name?:              string
		id?:                                       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		restorable_dropped_database_ids?: [...string]
		tags?: [string]: string
		transparent_data_encryption_key_vault_key_id?: string
		version?:                                      string
	})

	#timeouts: close({
		read?: string
	})
}
