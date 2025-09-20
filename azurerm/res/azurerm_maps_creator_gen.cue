package res

#azurerm_maps_creator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_maps_creator")
	close({
		timeouts?:        #timeouts
		id?:              string
		location!:        string
		maps_account_id!: string
		name!:            string
		storage_units!:   number
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
