package res

import "list"

#azurerm_synapse_spark_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_spark_pool")
	close({
		cache_size?:                          number
		compute_isolation_enabled?:           bool
		dynamic_executor_allocation_enabled?: bool
		id?:                                  string
		max_executors?:                       number
		min_executors?:                       number
		name!:                                string
		node_count?:                          number
		node_size!:                           string
		node_size_family!:                    string
		session_level_packages_enabled?:      bool
		auto_pause?: matchN(1, [#auto_pause, list.MaxItems(1) & [...#auto_pause]])
		spark_events_folder?: string
		spark_log_folder?:    string
		auto_scale?: matchN(1, [#auto_scale, list.MaxItems(1) & [...#auto_scale]])
		spark_version!: string
		library_requirement?: matchN(1, [#library_requirement, list.MaxItems(1) & [...#library_requirement]])
		spark_config?: matchN(1, [#spark_config, list.MaxItems(1) & [...#spark_config]])
		timeouts?:             #timeouts
		synapse_workspace_id!: string
		tags?: [string]: string
	})

	#auto_pause: close({
		delay_in_minutes!: number
	})

	#auto_scale: close({
		max_node_count!: number
		min_node_count!: number
	})

	#library_requirement: close({
		content!:  string
		filename!: string
	})

	#spark_config: close({
		content!:  string
		filename!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
