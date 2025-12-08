package res

import "list"

#azurerm_machine_learning_compute_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_compute_cluster")
	close({
		description?:                   string
		id?:                            string
		local_auth_enabled?:            bool
		location!:                      string
		machine_learning_workspace_id!: string
		name!:                          string
		node_public_ip_enabled?:        bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		scale_settings!: matchN(1, [#scale_settings, list.MaxItems(1) & [_, ...] & [...#scale_settings]])
		ssh?: matchN(1, [#ssh, list.MaxItems(1) & [...#ssh]])
		ssh_public_access_enabled?: bool
		subnet_resource_id?:        string
		tags?: [string]: string
		vm_priority!: string
		vm_size!:     string
		timeouts?:    #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#scale_settings: close({
		max_node_count!:                       number
		min_node_count!:                       number
		scale_down_nodes_after_idle_duration!: string
	})

	#ssh: close({
		admin_password?: string
		admin_username!: string
		key_value?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
