package res

#azurerm_key_vault_managed_storage_account_sas_token_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_managed_storage_account_sas_token_definition")
	close({
		timeouts?:                   #timeouts
		id?:                         string
		managed_storage_account_id!: string
		name!:                       string
		sas_template_uri!:           string
		sas_type!:                   string
		secret_id?:                  string
		tags?: [string]: string
		validity_period!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
