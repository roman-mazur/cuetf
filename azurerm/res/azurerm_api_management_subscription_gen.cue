package res

#azurerm_api_management_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_subscription")
	close({
		allow_tracing?:       bool
		api_id?:              string
		api_management_name!: string
		display_name!:        string
		id?:                  string
		primary_key?:         string
		product_id?:          string
		resource_group_name!: string
		timeouts?:            #timeouts
		secondary_key?:       string
		state?:               string
		subscription_id?:     string
		user_id?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
