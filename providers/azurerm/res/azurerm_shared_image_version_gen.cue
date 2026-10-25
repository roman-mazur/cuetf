package res

import "list"

azurerm_shared_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_shared_image_version")
	close({
		target_region!: matchN(1, [#target_region, [_, ...] & [...#target_region]])
		timeouts?: #timeouts
		uefi?: matchN(1, [#uefi, list.MaxItems(1) & [...#uefi]])
		blob_uri?:                                 string
		deletion_of_replicated_locations_enabled?: bool
		end_of_life_date?:                         string
		exclude_from_latest?:                      bool
		gallery_name!:                             string
		id?:                                       string
		image_name!:                               string
		location!:                                 string
		managed_image_id?:                         string
		name!:                                     string
		os_disk_snapshot_id?:                      string
		replication_mode?:                         string
		resource_group_name!:                      string
		storage_account_id?:                       string
		tags?: [string]: string
	})

	#target_region: close({
		disk_encryption_set_id?:      string
		exclude_from_latest_enabled?: bool
		name!:                        string
		regional_replica_count!:      number
		storage_account_type?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#uefi: close({
		additional_signatures?: matchN(1, [_#defs."/$defs/uefi/$defs/additional_signatures", list.MaxItems(1) & [..._#defs."/$defs/uefi/$defs/additional_signatures"]])
		signature_template_names!: [...string]
	})

	_#defs: "/$defs/uefi/$defs/additional_signatures": close({
		db?: matchN(1, [_#defs."/$defs/uefi/$defs/additional_signatures/$defs/db", [..._#defs."/$defs/uefi/$defs/additional_signatures/$defs/db"]])
		dbx?: matchN(1, [_#defs."/$defs/uefi/$defs/additional_signatures/$defs/dbx", [..._#defs."/$defs/uefi/$defs/additional_signatures/$defs/dbx"]])
		kek?: matchN(1, [_#defs."/$defs/uefi/$defs/additional_signatures/$defs/kek", [..._#defs."/$defs/uefi/$defs/additional_signatures/$defs/kek"]])
		pk?: matchN(1, [_#defs."/$defs/uefi/$defs/additional_signatures/$defs/pk", list.MaxItems(1) & [..._#defs."/$defs/uefi/$defs/additional_signatures/$defs/pk"]])
	})

	_#defs: "/$defs/uefi/$defs/additional_signatures/$defs/db": close({
		type!: string
		values_base64!: [...string]
	})

	_#defs: "/$defs/uefi/$defs/additional_signatures/$defs/dbx": close({
		type!: string
		values_base64!: [...string]
	})

	_#defs: "/$defs/uefi/$defs/additional_signatures/$defs/kek": close({
		type!: string
		values_base64!: [...string]
	})

	_#defs: "/$defs/uefi/$defs/additional_signatures/$defs/pk": close({
		type!: string
		values_base64!: [...string]
	})
}
