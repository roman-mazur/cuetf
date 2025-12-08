package res

#azurerm_managed_application_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_managed_application_definition")
	close({
		create_ui_definition?: string
		description?:          string
		display_name!:         string
		id?:                   string
		location!:             string
		lock_level!:           string
		authorization?: matchN(1, [#authorization, [...#authorization]])
		main_template?:       string
		timeouts?:            #timeouts
		name!:                string
		package_enabled?:     bool
		package_file_uri?:    string
		resource_group_name!: string
		tags?: [string]: string
	})

	#authorization: close({
		role_definition_id!:   string
		service_principal_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
