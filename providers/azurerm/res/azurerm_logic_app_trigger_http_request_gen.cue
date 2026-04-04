package res

#azurerm_logic_app_trigger_http_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_trigger_http_request")
	close({
		timeouts?:      #timeouts
		callback_url?:  string
		id?:            string
		logic_app_id!:  string
		method?:        string
		name!:          string
		relative_path?: string
		schema!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
