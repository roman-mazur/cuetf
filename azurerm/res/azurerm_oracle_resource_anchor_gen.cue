package res

#azurerm_oracle_resource_anchor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_oracle_resource_anchor")
	close({
		timeouts?:              #timeouts
		id?:                    string
		linked_compartment_id?: string
		location?:              string
		name!:                  string
		resource_group_name!:   string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
