package res

import "list"

#azurerm_data_protection_backup_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_vault")
	close({
		cross_region_restore_enabled?: bool
		datastore_type!:               string
		id?:                           string
		immutability?:                 string
		location!:                     string
		name!:                         string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		redundancy!:                 string
		resource_group_name!:        string
		timeouts?:                   #timeouts
		retention_duration_in_days?: number
		soft_delete?:                string
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
