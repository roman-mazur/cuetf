package res

import "list"

#azurerm_arc_kubernetes_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_arc_kubernetes_cluster")
	close({
		agent_public_key_certificate!: string
		agent_version?:                string
		distribution?:                 string
		id?:                           string
		infrastructure?:               string
		kubernetes_version?:           string
		location!:                     string
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		name!:                string
		offering?:            string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		total_core_count?: number
		total_node_count?: number
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
