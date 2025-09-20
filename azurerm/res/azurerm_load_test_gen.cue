package res

import "list"

#azurerm_load_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_load_test")
	close({
		data_plane_uri?: string
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		description?:         string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
	})

	#encryption: close({
		identity?: matchN(1, [_#defs."/$defs/encryption/$defs/identity", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption/$defs/identity"]])
		key_url!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/encryption/$defs/identity": close({
		identity_id!: string
		type!:        string
	})
}
