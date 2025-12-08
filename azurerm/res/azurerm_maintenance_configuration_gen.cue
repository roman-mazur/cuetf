package res

import "list"

#azurerm_maintenance_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_maintenance_configuration")
	close({
		id?:                       string
		in_guest_user_patch_mode?: string
		location!:                 string
		name!:                     string
		properties?: [string]: string
		resource_group_name!: string
		scope!:               string
		install_patches?: matchN(1, [#install_patches, list.MaxItems(1) & [...#install_patches]])
		tags?: [string]: string
		timeouts?: #timeouts
		window?: matchN(1, [#window, list.MaxItems(1) & [...#window]])
		visibility?: string
	})

	#install_patches: close({
		linux?: matchN(1, [_#defs."/$defs/install_patches/$defs/linux", [..._#defs."/$defs/install_patches/$defs/linux"]])
		windows?: matchN(1, [_#defs."/$defs/install_patches/$defs/windows", [..._#defs."/$defs/install_patches/$defs/windows"]])
		reboot?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#window: close({
		duration?:             string
		expiration_date_time?: string
		recur_every?:          string
		start_date_time!:      string
		time_zone!:            string
	})

	_#defs: "/$defs/install_patches/$defs/linux": close({
		classifications_to_include?: [...string]
		package_names_mask_to_exclude?: [...string]
		package_names_mask_to_include?: [...string]
	})

	_#defs: "/$defs/install_patches/$defs/windows": close({
		classifications_to_include?: [...string]
		kb_numbers_to_exclude?: [...string]
		kb_numbers_to_include?: [...string]
	})
}
