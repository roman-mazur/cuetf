package res

import "list"

#azurerm_hpc_cache_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_hpc_cache_access_policy")
	close({
		access_rule!: matchN(1, [#access_rule, list.MaxItems(3) & [_, ...] & [...#access_rule]])
		timeouts?:     #timeouts
		hpc_cache_id!: string
		id?:           string
		name!:         string
	})

	#access_rule: close({
		access!:                  string
		anonymous_gid?:           number
		anonymous_uid?:           number
		filter?:                  string
		root_squash_enabled?:     bool
		scope!:                   string
		submount_access_enabled?: bool
		suid_enabled?:            bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
