package res

import "list"

#azurerm_data_protection_backup_instance_kubernetes_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_instance_kubernetes_cluster")
	close({
		backup_datasource_parameters?: matchN(1, [#backup_datasource_parameters, list.MaxItems(1) & [...#backup_datasource_parameters]])
		backup_policy_id!:             string
		id?:                           string
		kubernetes_cluster_id!:        string
		location!:                     string
		name!:                         string
		snapshot_resource_group_name!: string
		vault_id!:                     string
		timeouts?:                     #timeouts
	})

	#backup_datasource_parameters: close({
		cluster_scoped_resources_enabled?: bool
		excluded_namespaces?: [...string]
		excluded_resource_types?: [...string]
		included_namespaces?: [...string]
		included_resource_types?: [...string]
		label_selectors?: [...string]
		volume_snapshot_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
