package res

import "list"

#azurerm_log_analytics_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_cluster")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		cluster_id?:          string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		size_gb?:             number
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
		update?: string
	})
}
