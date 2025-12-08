package res

import "list"

#azurerm_machine_learning_compute_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_compute_instance")
	close({
		authorization_type?:            string
		description?:                   string
		id?:                            string
		local_auth_enabled?:            bool
		machine_learning_workspace_id!: string
		name!:                          string
		assign_to_user?: matchN(1, [#assign_to_user, list.MaxItems(1) & [...#assign_to_user]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ssh?: matchN(1, [#ssh, list.MaxItems(1) & [...#ssh]])
		node_public_ip_enabled?: bool
		subnet_resource_id?:     string
		tags?: [string]: string
		virtual_machine_size!: string
		timeouts?:             #timeouts
	})

	#assign_to_user: close({
		object_id?: string
		tenant_id?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#ssh: close({
		port?:       number
		public_key!: string
		username?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
