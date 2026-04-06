package res

import "list"

#azurerm_mobile_network_sim_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_sim_group")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		encryption_key_url?: string
		id?:                 string
		location!:           string
		mobile_network_id!:  string
		name!:               string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
