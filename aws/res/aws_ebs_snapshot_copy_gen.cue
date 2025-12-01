package res

#aws_ebs_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ebs_snapshot_copy")
	close({
		arn?:                         string
		completion_duration_minutes?: number
		data_encryption_key_id?:      string
		description?:                 string
		encrypted?:                   bool
		id?:                          string
		timeouts?:                    #timeouts
		kms_key_id?:                  string
		outpost_arn?:                 string
		owner_alias?:                 string
		owner_id?:                    string
		permanent_restore?:           bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		source_region!:      string
		source_snapshot_id!: string
		storage_tier?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		temporary_restore_days?: number
		volume_id?:              string
		volume_size?:            number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
