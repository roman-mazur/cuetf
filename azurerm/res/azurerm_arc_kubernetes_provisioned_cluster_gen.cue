package res

import "list"

#azurerm_arc_kubernetes_provisioned_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_arc_kubernetes_provisioned_cluster")
	close({
		agent_version?:                  string
		arc_agent_auto_upgrade_enabled?: bool
		arc_agent_desired_version?:      string
		distribution?:                   string
		id?:                             string
		infrastructure?:                 string
		kubernetes_version?:             string
		location!:                       string
		azure_active_directory?: matchN(1, [#azure_active_directory, list.MaxItems(1) & [...#azure_active_directory]])
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		name!:                string
		offering?:            string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		total_core_count?: number
		total_node_count?: number
	})

	#azure_active_directory: close({
		admin_group_object_ids?: [...string]
		azure_rbac_enabled?: bool
		tenant_id?:          string
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
