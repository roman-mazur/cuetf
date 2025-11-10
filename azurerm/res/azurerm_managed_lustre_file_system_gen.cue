package res

import "list"

#azurerm_managed_lustre_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_lustre_file_system")
	close({
		id?:                     string
		location!:               string
		mgs_address?:            string
		name!:                   string
		resource_group_name!:    string
		sku_name!:               string
		storage_capacity_in_tb!: number
		subnet_id!:              string
		encryption_key?: matchN(1, [#encryption_key, list.MaxItems(1) & [...#encryption_key]])
		tags?: [string]: string
		hsm_setting?: matchN(1, [#hsm_setting, list.MaxItems(1) & [...#hsm_setting]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		maintenance_window!: matchN(1, [#maintenance_window, list.MaxItems(1) & [_, ...] & [...#maintenance_window]])
		root_squash?: matchN(1, [#root_squash, list.MaxItems(1) & [...#root_squash]])
		timeouts?: #timeouts
		zones!: [...string]
	})

	#encryption_key: close({
		key_url!:         string
		source_vault_id!: string
	})

	#hsm_setting: close({
		container_id!:         string
		import_prefix?:        string
		logging_container_id!: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#maintenance_window: close({
		day_of_week!:        string
		time_of_day_in_utc!: string
	})

	#root_squash: close({
		mode!:           string
		no_squash_nids!: string
		squash_gid?:     number
		squash_uid?:     number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
