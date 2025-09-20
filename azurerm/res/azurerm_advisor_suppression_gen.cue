package res

#azurerm_advisor_suppression: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_advisor_suppression")
	close({
		timeouts?:          #timeouts
		id?:                string
		name!:              string
		recommendation_id!: string
		resource_id!:       string
		suppression_id?:    string
		ttl?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
