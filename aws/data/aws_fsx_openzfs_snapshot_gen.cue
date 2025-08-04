package data

#aws_fsx_openzfs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_openzfs_snapshot")
	close({
		arn?:           string
		creation_time?: string
		id?:            string
		most_recent?:   bool
		name?:          string
		region?:        string
		snapshot_id?:   string
		filter?: matchN(1, [#filter, [...#filter]])
		snapshot_ids?: [...string]
		tags?: [string]: string
		volume_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
