package res

import "list"

#azurerm_mobile_network_slice: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_slice")
	close({
		single_network_slice_selection_assistance_information?: matchN(1, [#single_network_slice_selection_assistance_information, list.MaxItems(1) & [...#single_network_slice_selection_assistance_information]])
		description?:          string
		id?:                   string
		location!:             string
		mobile_network_id!:    string
		name!:                 string
		slice_differentiator?: string
		slice_service_type?:   number
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#single_network_slice_selection_assistance_information: close({
		slice_service_type!: _
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
