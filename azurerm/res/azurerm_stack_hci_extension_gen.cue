package res

#azurerm_stack_hci_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stack_hci_extension")
	close({
		arc_setting_id!:                     string
		auto_upgrade_minor_version_enabled?: bool
		automatic_upgrade_enabled?:          bool
		id?:                                 string
		name!:                               string
		protected_settings?:                 string
		publisher!:                          string
		timeouts?:                           #timeouts
		settings?:                           string
		type!:                               string
		type_handler_version?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
