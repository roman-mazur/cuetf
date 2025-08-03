package res

#aws_memorydb_multi_region_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_multi_region_cluster")
	close({
		arn?:                               string
		description?:                       string
		engine?:                            string
		engine_version?:                    string
		multi_region_cluster_name?:         string
		multi_region_cluster_name_suffix!:  string
		multi_region_parameter_group_name?: string
		node_type!:                         string
		timeouts?:                          #timeouts
		num_shards?:                        number
		region?:                            string
		status?:                            string
		tags?: [string]:     string
		tags_all?: [string]: string
		tls_enabled?:     bool
		update_strategy?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
