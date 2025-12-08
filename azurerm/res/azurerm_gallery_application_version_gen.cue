package res

import "list"

#azurerm_gallery_application_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_gallery_application_version")
	close({
		config_file?:            string
		enable_health_check?:    bool
		end_of_life_date?:       string
		exclude_from_latest?:    bool
		gallery_application_id!: string
		id?:                     string
		manage_action!: matchN(1, [#manage_action, list.MaxItems(1) & [_, ...] & [...#manage_action]])
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		target_region!: matchN(1, [#target_region, [_, ...] & [...#target_region]])
		location!:     string
		name!:         string
		package_file?: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#manage_action: close({
		install!: string
		remove!:  string
		update?:  string
	})

	#source: close({
		default_configuration_link?: string
		media_link!:                 string
	})

	#target_region: close({
		exclude_from_latest?:    bool
		name!:                   string
		regional_replica_count!: number
		storage_account_type?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
