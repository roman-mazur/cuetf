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
		owner_id?:               string
		owners?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		region?: string
		restorable_by_user_ids?: [...string]
		timeouts?:    #timeouts
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
