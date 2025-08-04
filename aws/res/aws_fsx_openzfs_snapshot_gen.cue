package res

#aws_fsx_openzfs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_openzfs_snapshot")
	close({
		timeouts?:      #timeouts
		arn?:           string
		creation_time?: string
		id?:            string
		name!:          string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		volume_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
