package res

#aws_docdb_cluster_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_docdb_cluster_snapshot")
	availability_zones?: [...string]
	db_cluster_identifier!:          string
	db_cluster_snapshot_arn?:        string
	db_cluster_snapshot_identifier!: string
	engine?:                         string
	engine_version?:                 string
	id?:                             string
	kms_key_id?:                     string
	port?:                           number
	snapshot_type?:                  string
	source_db_cluster_snapshot_arn?: string
	status?:                         string
	storage_encrypted?:              bool
	vpc_id?:                         string
	timeouts?:                       #timeouts

	#timeouts: create?: string
}
