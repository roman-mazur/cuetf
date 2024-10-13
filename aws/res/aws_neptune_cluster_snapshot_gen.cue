package res

#aws_neptune_cluster_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_neptune_cluster_snapshot")
	allocated_storage?: number
	availability_zones?: [...string]
	db_cluster_identifier!:          string
	db_cluster_snapshot_arn?:        string
	db_cluster_snapshot_identifier!: string
	engine?:                         string
	engine_version?:                 string
	id?:                             string
	kms_key_id?:                     string
	license_model?:                  string
	port?:                           number
	snapshot_type?:                  string
	source_db_cluster_snapshot_arn?: string
	status?:                         string
	storage_encrypted?:              bool
	vpc_id?:                         string
	timeouts?:                       #timeouts

	#timeouts: create?: string
}
