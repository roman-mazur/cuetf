package res

#aws_rds_cluster_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster_snapshot_copy")
	close({
		allocated_storage?:       number
		copy_tags?:               bool
		db_cluster_snapshot_arn?: string
		destination_region?:      string
		engine?:                  string
		engine_version?:          string
		id?:                      string
		kms_key_id?:              string
		license_model?:           string
		presigned_url?:           string
		region?:                  string
		timeouts?:                #timeouts
		shared_accounts?: [...string]
		snapshot_type?:                         string
		source_db_cluster_snapshot_identifier!: string
		storage_encrypted?:                     bool
		storage_type?:                          string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_db_cluster_snapshot_identifier!: string
		vpc_id?:                                string
	})

	#timeouts: close({
		create?: string
	})
}
