package data

#azurerm_shared_image_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_shared_image_versions")
	close({
		timeouts?:     #timeouts
		gallery_name!: string
		id?:           string
		image_name!:   string
		images?: [...close({
			exclude_from_latest?: bool
			id?:                  string
			location?:            string
			managed_image_id?:    string
			name?:                string
			tags?: [string]: string
			target_region?: [...close({
				name?:                   string
				regional_replica_count?: number
				storage_account_type?:   string
			})]
		})]
		resource_group_name!: string
		tags_filter?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
