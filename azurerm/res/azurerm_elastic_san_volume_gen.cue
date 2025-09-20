package res

import "list"

#azurerm_elastic_san_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_elastic_san_volume")
	close({
		create_source?: matchN(1, [#create_source, list.MaxItems(1) & [...#create_source]])
		id?:                     string
		name!:                   string
		size_in_gib!:            number
		target_iqn?:             string
		target_portal_hostname?: string
		target_portal_port?:     number
		volume_group_id!:        string
		volume_id?:              string
		timeouts?:               #timeouts
	})

	#create_source: close({
		source_id!:   string
		source_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
