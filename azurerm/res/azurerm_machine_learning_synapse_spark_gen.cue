package res

import "list"

#azurerm_machine_learning_synapse_spark: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_machine_learning_synapse_spark")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		description?:                   string
		id?:                            string
		local_auth_enabled?:            bool
		location!:                      string
		machine_learning_workspace_id!: string
		name!:                          string
		synapse_spark_pool_id!:         string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
