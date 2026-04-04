package res

#azurerm_storage_data_lake_gen2_filesystem: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_data_lake_gen2_filesystem")
	close({
		ace?: matchN(1, [#ace, [...#ace]])
		timeouts?:                 #timeouts
		default_encryption_scope?: string
		group?:                    string
		id?:                       string
		name!:                     string
		owner?:                    string
		properties?: [string]: string
		storage_account_id!: string
	})

	#ace: close({
		id?:          string
		permissions!: string
		scope?:       string
		type!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
