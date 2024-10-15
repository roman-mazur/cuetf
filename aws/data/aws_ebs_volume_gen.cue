package data

#aws_ebs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_volume")
	arn?:                  string
	availability_zone?:    string
	encrypted?:            bool
	id?:                   string
	iops?:                 number
	kms_key_id?:           string
	most_recent?:          bool
	multi_attach_enabled?: bool
	outpost_arn?:          string
	size?:                 number
	snapshot_id?:          string
	tags?: [string]: string
	throughput?:  number
	volume_id?:   string
	volume_type?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
