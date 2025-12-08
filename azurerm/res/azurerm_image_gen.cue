package res

import "list"

#azurerm_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_image")
	close({
		hyper_v_generation?: string
		id?:                 string
		location!:           string
		name!:               string
		data_disk?: matchN(1, [#data_disk, [...#data_disk]])
		resource_group_name!:       string
		source_virtual_machine_id?: string
		tags?: [string]: string
		zone_resilient?: bool
		os_disk?: matchN(1, [#os_disk, list.MaxItems(1) & [...#os_disk]])
		timeouts?: #timeouts
	})

	#data_disk: close({
		blob_uri?: string

		// The type of storage disk
		storage_type!:           string
		caching?:                string
		disk_encryption_set_id?: string
		lun?:                    number
		managed_disk_id?:        string
		size_gb?:                number
	})

	#os_disk: close({
		blob_uri?: string

		// The type of storage disk
		storage_type!:           string
		caching?:                string
		disk_encryption_set_id?: string
		managed_disk_id?:        string
		os_state?:               string
		os_type?:                string
		size_gb?:                number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
