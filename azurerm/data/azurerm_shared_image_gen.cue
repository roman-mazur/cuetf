package data

#azurerm_shared_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_shared_image")
	close({
		accelerated_network_support_enabled?: bool
		architecture?:                        string
		confidential_vm_enabled?:             bool
		confidential_vm_supported?:           bool
		description?:                         string
		eula?:                                string
		gallery_name!:                        string
		hibernation_enabled?:                 bool
		hyper_v_generation?:                  string
		id?:                                  string
		identifier?: [...close({
			offer?:     string
			publisher?: string
			sku?:       string
		})]
		location?:              string
		name!:                  string
		os_type?:               string
		privacy_statement_uri?: string
		purchase_plan?: [...close({
			name?:      string
			product?:   string
			publisher?: string
		})]
		release_note_uri?:    string
		resource_group_name!: string
		timeouts?:            #timeouts
		specialized?:         bool
		tags?: [string]: string
		trusted_launch_enabled?:   bool
		trusted_launch_supported?: bool
	})

	#timeouts: close({
		read?: string
	})
}
