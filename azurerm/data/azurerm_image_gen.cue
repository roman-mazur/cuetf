package data

#azurerm_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_image")
	close({
		data_disk?: [...close({
			blob_uri?:        string
			caching?:         string
			lun?:             number
			managed_disk_id?: string
			size_gb?:         number
		})]
		id?:         string
		location?:   string
		name?:       string
		name_regex?: string
		os_disk?: [...close({
			blob_uri?:        string
			caching?:         string
			managed_disk_id?: string
			os_state?:        string
			os_type?:         string
			size_gb?:         number
		})]
		resource_group_name!: string
		timeouts?:            #timeouts
		sort_descending?:     bool
		tags?: [string]: string
		zone_resilient?: bool
	})

	#timeouts: close({
		read?: string
	})
}
