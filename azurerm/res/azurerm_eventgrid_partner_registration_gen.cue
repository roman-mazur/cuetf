package res

#azurerm_eventgrid_partner_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_partner_registration")
	close({
		timeouts?:                #timeouts
		id?:                      string
		name!:                    string
		partner_registration_id?: string
		resource_group_name!:     string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
