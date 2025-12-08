package res

import "list"

#azurerm_kubernetes_cluster_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_cluster_extension")
	close({
		aks_assigned_identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		cluster_id!: string
		configuration_protected_settings?: [string]: string
		configuration_settings?: [string]:           string
		current_version?: string
		extension_type!:  string
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		id?:                string
		timeouts?:          #timeouts
		name!:              string
		release_namespace?: string
		release_train?:     string
		target_namespace?:  string
		version?:           string
	})

	#plan: close({
		name!:           string
		product!:        string
		promotion_code?: string
		publisher!:      string
		version?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
