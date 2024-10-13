package data

#aws_fsx_openzfs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_openzfs_snapshot")
	arn?:           string
	creation_time?: string
	id?:            string
	most_recent?:   bool
	name?:          string
	snapshot_id?:   string
	snapshot_ids?: [...string]
	tags?: [string]: string
	volume_id?: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
