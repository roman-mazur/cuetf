package data

#azurerm_api_management_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_api_management_api")
	close({
		api_management_name!: string
		description?:         string
		display_name?:        string
		id?:                  string
		is_current?:          bool
		is_online?:           bool
		name!:                string
		path?:                string
		protocols?: [...string]
		resource_group_name!: string
		revision!:            string
		service_url?:         string
		timeouts?:            #timeouts
		soap_pass_through?:   bool
		subscription_key_parameter_names?: [...close({
			header?: string
			query?:  string
		})]
		subscription_required?: bool
		version?:               string
		version_set_id?:        string
	})

	#timeouts: close({
		read?: string
	})
}
