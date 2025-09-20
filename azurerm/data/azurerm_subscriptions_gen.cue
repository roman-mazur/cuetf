package data

#azurerm_subscriptions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_subscriptions")
	close({
		timeouts?:              #timeouts
		display_name_contains?: string
		display_name_prefix?:   string
		id?:                    string
		subscriptions?: [...close({
			display_name?:          string
			id?:                    string
			location_placement_id?: string
			quota_id?:              string
			spending_limit?:        string
			state?:                 string
			subscription_id?:       string
			tags?: [string]: string
			tenant_id?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
