package res

import "list"

#azurerm_elastic_san_volume_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_elastic_san_volume_group")
	close({
		elastic_san_id!:  string
		encryption_type?: string
		id?:              string
		name!:            string
		protocol_type?:   string
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_rule?: matchN(1, [#network_rule, [...#network_rule]])
		timeouts?: #timeouts
	})

	#encryption: close({
		current_versioned_key_expiration_timestamp?: string
		current_versioned_key_id?:                   string
		key_vault_key_id!:                           string
		last_key_rotation_timestamp?:                string
		user_assigned_identity_id?:                  string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_rule: close({
		action?:    string
		subnet_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
