package data

#azurerm_mobile_network_slice: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_slice")
	close({
		timeouts?:          #timeouts
		description?:       string
		id?:                string
		location?:          string
		mobile_network_id!: string
		name!:              string
		single_network_slice_selection_assistance_information?: [...close({
			slice_differentiator?: string
			slice_service_type?:   number
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
