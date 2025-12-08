package res

import "list"

#azurerm_stack_hci_marketplace_gallery_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stack_hci_marketplace_gallery_image")
	close({
		custom_location_id!:  string
		hyperv_generation!:   string
		id?:                  string
		location!:            string
		name!:                string
		os_type!:             string
		resource_group_name!: string
		identifier!: matchN(1, [#identifier, list.MaxItems(1) & [_, ...] & [...#identifier]])
		storage_path_id?: string
		timeouts?:        #timeouts
		tags?: [string]: string
		version!: string
	})

	#identifier: close({
		offer!:     string
		publisher!: string
		sku!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
