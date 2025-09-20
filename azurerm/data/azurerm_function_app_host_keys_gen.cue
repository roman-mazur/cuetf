package data

#azurerm_function_app_host_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_function_app_host_keys")
	close({
		blobs_extension_key?:             string
		default_function_key?:            string
		durabletask_extension_key?:       string
		event_grid_extension_config_key?: string
		event_grid_extension_key?:        string
		id?:                              string
		name!:                            string
		primary_key?:                     string
		resource_group_name!:             string
		timeouts?:                        #timeouts
		signalr_extension_key?:           string
		webpubsub_extension_key?:         string
	})

	#timeouts: close({
		read?: string
	})
}
