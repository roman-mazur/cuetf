package res

#aws_docdb_global_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_docdb_global_cluster")
	close({
		arn?:                       string
		database_name?:             string
		deletion_protection?:       bool
		engine?:                    string
		engine_version?:            string
		global_cluster_identifier!: string
		timeouts?:                  #timeouts
		global_cluster_members?: [...close({
			db_cluster_arn?: string
			is_writer?:      bool
		})]
		global_cluster_resource_id?:   string
		id?:                           string
		region?:                       string
		source_db_cluster_identifier?: string
		status?:                       string
		storage_encrypted?:            bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
