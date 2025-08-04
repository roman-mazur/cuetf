package data

#aws_ebs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_snapshot")
	close({
		arn?:                    string
		data_encryption_key_id?: string
		description?:            string
		encrypted?:              bool
		id?:                     string
		kms_key_id?:             string
		most_recent?:            bool
		outpost_arn?:            string
		owner_alias?:            string
		filter?: matchN(1, [#filter, [...#filter]])
		owner_id?: string
		owners?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		timeouts?: #timeouts
		restorable_by_user_ids?: [...string]
		snapshot_id?: string
		snapshot_ids?: [...string]
		start_time?:   string
		state?:        string
		storage_tier?: string
		tags?: [string]: string
		volume_id?:   string
		volume_size?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
