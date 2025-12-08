package res

import "list"

#azurerm_shared_image_gallery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_shared_image_gallery")
	close({
		sharing?: matchN(1, [#sharing, list.MaxItems(1) & [...#sharing]])
		description?:         string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		unique_name?: string
		timeouts?:    #timeouts
	})

	#sharing: close({
		community_gallery?: matchN(1, [_#defs."/$defs/sharing/$defs/community_gallery", list.MaxItems(1) & [..._#defs."/$defs/sharing/$defs/community_gallery"]])
		permission!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/sharing/$defs/community_gallery": close({
		eula!:            string
		name?:            string
		prefix!:          string
		publisher_email!: string
		publisher_uri!:   string
	})
}
