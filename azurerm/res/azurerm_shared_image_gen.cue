package res

import "list"

#azurerm_shared_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_shared_image")
	close({
		accelerated_network_support_enabled?: bool
		architecture?:                        string
		confidential_vm_enabled?:             bool
		confidential_vm_supported?:           bool
		identifier!: matchN(1, [#identifier, list.MaxItems(1) & [_, ...] & [...#identifier]])
		description?:                       string
		disk_controller_type_nvme_enabled?: bool
		disk_types_not_allowed?: [...string]
		end_of_life_date?:    string
		eula?:                string
		gallery_name!:        string
		hibernation_enabled?: bool
		hyper_v_generation?:  string
		id?:                  string
		location!:            string
		purchase_plan?: matchN(1, [#purchase_plan, list.MaxItems(1) & [...#purchase_plan]])
		max_recommended_memory_in_gb?: number
		timeouts?:                     #timeouts
		max_recommended_vcpu_count?:   number
		min_recommended_memory_in_gb?: number
		min_recommended_vcpu_count?:   number
		name!:                         string
		os_type!:                      string
		privacy_statement_uri?:        string
		release_note_uri?:             string
		resource_group_name!:          string
		specialized?:                  bool
		tags?: [string]: string
		trusted_launch_enabled?:   bool
		trusted_launch_supported?: bool
	})

	#identifier: close({
		offer!:     string
		publisher!: string
		sku!:       string
	})

	#purchase_plan: close({
		name!:      string
		product?:   string
		publisher?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
