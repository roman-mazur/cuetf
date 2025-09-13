package res

#aws_db_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_snapshot_copy")
	close({
		allocated_storage?:  number
		availability_zone?:  string
		copy_tags?:          bool
		db_snapshot_arn?:    string
		destination_region?: string
		encrypted?:          bool
		engine?:             string
		engine_version?:     string
		id?:                 string
		iops?:               number
		kms_key_id?:         string
		license_model?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		option_group_name?: string
		timeouts?:          #timeouts
		port?:              number
		presigned_url?:     string
		shared_accounts?: [...string]
		snapshot_type?:                 string
		source_db_snapshot_identifier!: string
		source_region?:                 string
		storage_type?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_custom_availability_zone?: string
		target_db_snapshot_identifier!:   string
		vpc_id?:                          string
	})

	#timeouts: close({
		create?: string
	})
}
