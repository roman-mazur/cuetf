package res

#azurerm_automation_connection_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_connection_type")
	close({
		field?: matchN(1, [#field, [_, ...] & [...#field]])
		automation_account_name!: string
		id?:                      string
		is_global?:               bool
		name!:                    string
		resource_group_name!:     string
		timeouts?:                #timeouts
	})

	#field: close({
		is_encrypted?: bool
		is_optional?:  bool
		name!:         string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
