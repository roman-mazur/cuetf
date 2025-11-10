package res

#azurerm_shared_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_shared_image_version")
	close({
		blob_uri?:                                 string
		deletion_of_replicated_locations_enabled?: bool
		end_of_life_date?:                         string
		exclude_from_latest?:                      bool
		gallery_name!:                             string
		id?:                                       string
		image_name!:                               string
		location!:                                 string
		target_region!: matchN(1, [#target_region, [_, ...] & [...#target_region]])
		managed_image_id?:    string
		name!:                string
		os_disk_snapshot_id?: string
		timeouts?:            #timeouts
		replication_mode?:    string
		resource_group_name!: string
		storage_account_id?:  string
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
}
