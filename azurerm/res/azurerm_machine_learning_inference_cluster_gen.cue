package res

import "list"

#azurerm_machine_learning_inference_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_inference_cluster")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ssl?: matchN(1, [#ssl, list.MaxItems(1) & [...#ssl]])
		timeouts?:                      #timeouts
		cluster_purpose?:               string
		description?:                   string
		id?:                            string
		kubernetes_cluster_id!:         string
		location!:                      string
		machine_learning_workspace_id!: string
		name!:                          string
		tags?: [string]: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#ssl: close({
		cert?:                      string
		cname?:                     string
		key?:                       string
		leaf_domain_label?:         string
		overwrite_existing_domain?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
