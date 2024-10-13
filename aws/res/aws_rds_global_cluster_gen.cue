package res

#aws_rds_global_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_global_cluster")
	arn?:                       string
	database_name?:             string
	deletion_protection?:       bool
	engine?:                    string
	engine_lifecycle_support?:  string
	engine_version?:            string
	engine_version_actual?:     string
	force_destroy?:             bool
	global_cluster_identifier!: string
	global_cluster_members?: [...{
		db_cluster_arn?: string
		is_writer?:      bool
	}]
	global_cluster_resource_id?:   string
	id?:                           string
	source_db_cluster_identifier?: string
	storage_encrypted?:            bool
	timeouts?:                     #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
