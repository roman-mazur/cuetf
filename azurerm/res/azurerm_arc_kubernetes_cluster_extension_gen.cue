package res

import "list"

#azurerm_arc_kubernetes_cluster_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_arc_kubernetes_cluster_extension")
	close({
		cluster_id!: string
		configuration_protected_settings?: [string]: string
		configuration_settings?: [string]:           string
		current_version?: string
		extension_type!:  string
		id?:              string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		name!:              string
		release_namespace?: string
		timeouts?:          #timeouts
		release_train?:     string
		target_namespace?:  string
		version?:           string
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
