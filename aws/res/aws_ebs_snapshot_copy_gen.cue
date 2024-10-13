package res

#aws_ebs_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_snapshot_copy")
	arn?:                    string
	data_encryption_key_id?: string
	description?:            string
	encrypted?:              bool
	id?:                     string
	kms_key_id?:             string
	outpost_arn?:            string
	owner_alias?:            string
	owner_id?:               string
	permanent_restore?:      bool
	source_region!:          string
	source_snapshot_id!:     string
	storage_tier?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	temporary_restore_days?: number
	volume_id?:              string
	volume_size?:            number
	timeouts?:               #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
