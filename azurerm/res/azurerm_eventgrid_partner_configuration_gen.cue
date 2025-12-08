package res

#azurerm_eventgrid_partner_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_partner_configuration")
	close({
		partner_authorization?: matchN(1, [#partner_authorization, [...#partner_authorization]])
		default_maximum_expiration_time_in_days?: number
		id?:                                      string
		resource_group_name!:                     string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#partner_authorization: close({
		authorization_expiration_time_in_utc?: string
		partner_name!:                         string
		partner_registration_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
