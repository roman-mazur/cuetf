package data

#aws_db_cluster_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_cluster_snapshot")
	close({
		allocated_storage?: number
		availability_zones?: [...string]
		db_cluster_identifier?:          string
		db_cluster_snapshot_arn?:        string
		db_cluster_snapshot_identifier?: string
		engine?:                         string
		engine_version?:                 string
		id?:                             string
		include_public?:                 bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		include_shared?:                 bool
		kms_key_id?:                     string
		license_model?:                  string
		most_recent?:                    bool
		port?:                           number
		snapshot_create_time?:           string
		snapshot_type?:                  string
		source_db_cluster_snapshot_arn?: string
		status?:                         string
		storage_encrypted?:              bool
		tags?: [string]: string
		vpc_id?: string
	})
}
