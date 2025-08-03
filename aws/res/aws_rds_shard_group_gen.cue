package res

#aws_rds_shard_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_shard_group")
	close({
		arn?:                        string
		compute_redundancy?:         number
		db_cluster_identifier!:      string
		db_shard_group_identifier!:  string
		db_shard_group_resource_id?: string
		endpoint?:                   string
		max_acu!:                    number
		min_acu?:                    number
		timeouts?:                   #timeouts
		publicly_accessible?:        bool
		region?:                     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
