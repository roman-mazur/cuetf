package data

#aws_ebs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_snapshot")
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
	restorable_by_user_ids?: [...string]
	snapshot_id?: string
	snapshot_ids?: [...string]
	state?:        string
	storage_tier?: string
	tags?: [string]: string
	volume_id?:   string
	volume_size?: number
	filter?:      #filter | [...#filter]
	timeouts?:    #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
