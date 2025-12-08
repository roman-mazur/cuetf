package data

#azurerm_dev_test_lab: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dev_test_lab")
	close({
		artifacts_storage_account_id?:         string
		default_premium_storage_account_id?:   string
		default_storage_account_id?:           string
		id?:                                   string
		key_vault_id?:                         string
		location?:                             string
		name!:                                 string
		premium_data_disk_storage_account_id?: string
		timeouts?:                             #timeouts
		resource_group_name!:                  string
		storage_type?:                         string
		tags?: [string]: string
		unique_identifier?: string
	})

	#timeouts: close({
		read?: string
	})
}
