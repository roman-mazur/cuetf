package res

#azurerm_storage_data_lake_gen2_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_data_lake_gen2_path")
	close({
		ace?: matchN(1, [#ace, [...#ace]])
		filesystem_name!:    string
		group?:              string
		id?:                 string
		owner?:              string
		path!:               string
		resource!:           string
		storage_account_id!: string
		timeouts?:           #timeouts
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
