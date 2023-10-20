package res

#aws_ebs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_volume")
	arn?:                  string
	availability_zone:     string
	encrypted?:            bool
	final_snapshot?:       bool
	id?:                   string
	iops?:                 number
	kms_key_id?:           string
	multi_attach_enabled?: bool
	outpost_arn?:          string
	size?:                 number
	snapshot_id?:          string
	tags?: [string]: string
	tags_all?: [string]: string
	throughput?: number
	type?:       string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
