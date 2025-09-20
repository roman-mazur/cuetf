package res

import "list"

#azurerm_disk_encryption_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_disk_encryption_set")
	close({
		auto_key_rotation_enabled?: bool
		encryption_type?:           string
		federated_client_id?:       string
		id?:                        string
		key_vault_key_id?:          string
		key_vault_key_url?:         string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		location!:            string
		managed_hsm_key_id?:  string
		timeouts?:            #timeouts
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
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
}
