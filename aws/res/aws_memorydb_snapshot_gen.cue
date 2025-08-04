package res

#aws_memorydb_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_snapshot")
	close({
		arn?: string
		cluster_configuration?: [...close({
			description?:              string
			engine?:                   string
			engine_version?:           string
			maintenance_window?:       string
			name?:                     string
			node_type?:                string
			num_shards?:               number
			parameter_group_name?:     string
			port?:                     number
			snapshot_retention_limit?: number
			snapshot_window?:          string
			subnet_group_name?:        string
			topic_arn?:                string
			vpc_id?:                   string
		})]
		cluster_name!: string
		id?:           string
		kms_key_arn?:  string
		name?:         string
		name_prefix?:  string
		region?:       string
		source?:       string
		timeouts?:     #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
