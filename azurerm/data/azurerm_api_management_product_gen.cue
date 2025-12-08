package data

#azurerm_api_management_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_api_management_product")
	close({
		api_management_name!:   string
		approval_required?:     bool
		description?:           string
		display_name?:          string
		id?:                    string
		product_id!:            string
		published?:             bool
		resource_group_name!:   string
		subscription_required?: bool
		timeouts?:              #timeouts
		subscriptions_limit?:   number
		terms?:                 string
	})

	#timeouts: close({
		read?: string
	})
}
