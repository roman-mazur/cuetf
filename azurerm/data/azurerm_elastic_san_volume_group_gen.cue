package data

#azurerm_elastic_san_volume_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_elastic_san_volume_group")
	close({
		timeouts?:       #timeouts
		elastic_san_id!: string
		encryption?: [...close({
			current_versioned_key_expiration_timestamp?: string
			current_versioned_key_id?:                   string
			key_vault_key_id?:                           string
			last_key_rotation_timestamp?:                string
			user_assigned_identity_id?:                  string
		})]
		encryption_type?: string
		id?:              string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!: string
		network_rule?: [...close({
			action?:    string
			subnet_id?: string
		})]
		protocol_type?: string
	})

	#timeouts: close({
		read?: string
	})
}
