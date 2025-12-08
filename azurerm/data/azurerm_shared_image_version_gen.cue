package data

#azurerm_shared_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_shared_image_version")
	close({
		exclude_from_latest?:     bool
		gallery_name!:            string
		id?:                      string
		image_name!:              string
		location?:                string
		managed_image_id?:        string
		name!:                    string
		os_disk_image_size_gb?:   number
		timeouts?:                #timeouts
		os_disk_snapshot_id?:     string
		resource_group_name!:     string
		sort_versions_by_semver?: bool
		tags?: [string]: string
		target_region?: [...close({
			name?:                   string
			regional_replica_count?: number
			storage_account_type?:   string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
