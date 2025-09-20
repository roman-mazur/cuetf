package data

#azurerm_netapp_volume_quota_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_volume_quota_rule")
	close({
		timeouts?:          #timeouts
		id?:                string
		location?:          string
		name!:              string
		quota_size_in_kib?: number
		quota_target?:      string
		quota_type?:        string
		volume_id!:         string
	})

	#timeouts: close({
		read?: string
	})
}
