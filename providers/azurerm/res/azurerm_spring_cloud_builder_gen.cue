package res

import "list"

#azurerm_spring_cloud_builder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_builder")
	close({
		build_pack_group!: matchN(1, [#build_pack_group, [_, ...] & [...#build_pack_group]])
		stack!: matchN(1, [#stack, list.MaxItems(1) & [_, ...] & [...#stack]])
		timeouts?:                #timeouts
		id?:                      string
		name!:                    string
		spring_cloud_service_id!: string
	})

	#build_pack_group: close({
		build_pack_ids?: [...string]
		name!: string
	})

	#stack: close({
		id!:      string
		version!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
