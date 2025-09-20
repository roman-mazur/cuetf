package res

#azurerm_orbital_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_orbital_contact")
	close({
		timeouts?:               #timeouts
		contact_profile_id!:     string
		ground_station_name!:    string
		id?:                     string
		name!:                   string
		reservation_end_time!:   string
		reservation_start_time!: string
		spacecraft_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
