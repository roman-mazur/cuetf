package res

import "list"

#azurerm_spring_cloud_build_pack_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_build_pack_binding")
	close({
		launch?: matchN(1, [#launch, list.MaxItems(1) & [...#launch]])
		binding_type?:            string
		id?:                      string
		name!:                    string
		spring_cloud_builder_id!: string
		timeouts?:                #timeouts
	})

	#launch: close({
		properties?: [string]: string
		secrets?: [string]:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
