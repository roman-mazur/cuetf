package res

import "list"

#azurerm_video_indexer_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_video_indexer_account")
	close({
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		id?:                    string
		location!:              string
		name!:                  string
		public_network_access?: string
		resource_group_name!:   string
		tags?: [string]: string
		storage!: matchN(1, [#storage, list.MaxItems(1) & [_, ...] & [...#storage]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#storage: close({
		storage_account_id!:        string
		user_assigned_identity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
