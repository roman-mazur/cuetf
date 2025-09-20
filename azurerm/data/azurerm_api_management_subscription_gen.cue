package data

#azurerm_api_management_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_subscription")
	close({
		allow_tracing?:     bool
		api_id?:            string
		api_management_id!: string
		display_name?:      string
		id?:                string
		primary_key?:       string
		product_id?:        string
		secondary_key?:     string
		state?:             string
		timeouts?:          #timeouts
		subscription_id!:   string
		user_id?:           string
	})

	#timeouts: close({
		read?: string
	})
}
