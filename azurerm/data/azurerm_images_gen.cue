package data

#azurerm_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_images")
	close({
		timeouts?: #timeouts
		id?:       string
		images?: [...close({
			data_disk?: [...close({
				blob_uri?:        string
				caching?:         string
				lun?:             number
				managed_disk_id?: string
				size_gb?:         number
			})]
			location?: string
			name?:     string
			os_disk?: [...close({
				blob_uri?:               string
				caching?:                string
				disk_encryption_set_id?: string
				managed_disk_id?:        string
				os_state?:               string
				os_type?:                string
				size_gb?:                number
			})]
			tags?: [string]: string
			zone_resilient?: bool
		})]
		resource_group_name!: string
		tags_filter?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
