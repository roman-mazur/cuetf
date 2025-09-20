package res

import "list"

#azurerm_redis_enterprise_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_enterprise_database")
	close({
		client_protocol?:                string
		cluster_id!:                     string
		clustering_policy?:              string
		eviction_policy?:                string
		id?:                             string
		linked_database_group_nickname?: string
		module?: matchN(1, [#module, list.MaxItems(4) & [...#module]])
		linked_database_id?: [...string]
		name?:                 string
		timeouts?:             #timeouts
		port?:                 number
		primary_access_key?:   string
		secondary_access_key?: string
	})

	#module: close({
		args?:    string
		name!:    string
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
