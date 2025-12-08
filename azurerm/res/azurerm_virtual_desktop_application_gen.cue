package res

#azurerm_virtual_desktop_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_desktop_application")
	close({
		application_group_id!:         string
		command_line_argument_policy!: string
		command_line_arguments?:       string
		description?:                  string
		friendly_name?:                string
		icon_index?:                   number
		icon_path?:                    string
		id?:                           string
		name!:                         string
		timeouts?:                     #timeouts
		path!:                         string
		show_in_portal?:               bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
