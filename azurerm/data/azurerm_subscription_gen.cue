package data

#azurerm_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_subscription")
	close({
		timeouts?:              #timeouts
		display_name?:          string
		id?:                    string
		location_placement_id?: string
		quota_id?:              string
		spending_limit?:        string
		state?:                 string
		subscription_id?:       string
		tags?: [string]: string
		tenant_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
