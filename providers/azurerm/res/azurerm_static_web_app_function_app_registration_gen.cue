package res

#azurerm_static_web_app_function_app_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_static_web_app_function_app_registration")
	close({
		timeouts?:          #timeouts
		function_app_id!:   string
		id?:                string
		static_web_app_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
