package res

#azurerm_orbital_spacecraft: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_orbital_spacecraft")
	close({
		links!: matchN(1, [#links, [_, ...] & [...#links]])
		id?:                  string
		location!:            string
		name!:                string
		norad_id!:            string
		resource_group_name!: string
		tags?: [string]: string
		title_line!: string
		two_line_elements!: [...string]
		timeouts?: #timeouts
	})

	#links: close({
		bandwidth_mhz!:        number
		center_frequency_mhz!: number
		direction!:            string
		name!:                 string
		polarization!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
