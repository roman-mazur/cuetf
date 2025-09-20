package res

import "list"

#azurerm_hpc_cache_nfs_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_hpc_cache_nfs_target")
	close({
		namespace_junction?: matchN(1, [#namespace_junction, list.MaxItems(10) & [_, ...] & [...#namespace_junction]])
		cache_name!:                    string
		id?:                            string
		name!:                          string
		resource_group_name!:           string
		target_host_name!:              string
		usage_model!:                   string
		verification_timer_in_seconds?: number
		write_back_timer_in_seconds?:   number
		timeouts?:                      #timeouts
	})

	#namespace_junction: close({
		access_policy_name?: string
		namespace_path!:     string
		nfs_export!:         string
		target_path?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
