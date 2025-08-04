package res

#aws_elasticache_global_replication_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_global_replication_group")
	close({
		arn?:                        string
		at_rest_encryption_enabled?: bool
		auth_token_enabled?:         bool
		automatic_failover_enabled?: bool
		cache_node_type?:            string
		cluster_enabled?:            bool
		engine?:                     string
		engine_version?:             string
		engine_version_actual?:      string
		global_node_groups?: [...close({
			global_node_group_id?: string
			slots?:                string
		})]
		global_replication_group_description?: string
		global_replication_group_id?:          string
		global_replication_group_id_suffix!:   string
		id?:                                   string
		num_node_groups?:                      number
		timeouts?:                             #timeouts
		parameter_group_name?:                 string
		primary_replication_group_id!:         string
		region?:                               string
		transit_encryption_enabled?:           bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
