package res

#azurerm_arc_machine_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_arc_machine_extension")
	close({
		arc_machine_id!:            string
		automatic_upgrade_enabled?: bool
		force_update_tag?:          string
		id?:                        string
		location!:                  string
		name!:                      string
		protected_settings?:        string
		publisher!:                 string
		timeouts?:                  #timeouts
		settings?:                  string
		tags?: [string]: string
		type!:                 string
		type_handler_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
