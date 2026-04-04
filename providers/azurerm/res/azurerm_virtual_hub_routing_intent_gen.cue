package res

#azurerm_virtual_hub_routing_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_hub_routing_intent")
	close({
		routing_policy!: matchN(1, [#routing_policy, [_, ...] & [...#routing_policy]])
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		virtual_hub_id!: string
	})

	#routing_policy: close({
		destinations!: [...string]
		name!:     string
		next_hop!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
