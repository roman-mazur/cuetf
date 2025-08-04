package res

#aws_rds_cluster_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster_snapshot_copy")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		allocated_storage?:       number
		copy_tags?:               bool
		db_cluster_snapshot_arn?: string
		destination_region?:      string
		engine?:                  string
		timeouts?:                #timeouts
		engine_version?:          string
		id?:                      string
		kms_key_id?:              string
		license_model?:           string
		presigned_url?:           string
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
