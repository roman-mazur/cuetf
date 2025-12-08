package data

#azurerm_maintenance_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_maintenance_configuration")
	close({
		id?:                       string
		in_guest_user_patch_mode?: string
		install_patches?: [...close({
			linux?: [...close({
				classifications_to_include?: [...string]
				package_names_mask_to_exclude?: [...string]
				package_names_mask_to_include?: [...string]
			})]
			reboot?: string
			windows?: [...close({
				classifications_to_include?: [...string]
				kb_numbers_to_exclude?: [...string]
				kb_numbers_to_include?: [...string]
			})]
		})]
		location?: string
		name!:     string
		properties?: [string]: string
		resource_group_name!: string
		scope?:               string
		tags?: [string]: string
		timeouts?:   #timeouts
		visibility?: string
		window?: [...close({
			duration?:             string
			expiration_date_time?: string
			recur_every?:          string
			start_date_time?:      string
			time_zone?:            string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
