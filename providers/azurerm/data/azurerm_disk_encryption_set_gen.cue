package data

#azurerm_disk_encryption_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_disk_encryption_set")
	close({
		timeouts?:                  #timeouts
		auto_key_rotation_enabled?: bool
		id?:                        string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		key_vault_key_url?:   string
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
