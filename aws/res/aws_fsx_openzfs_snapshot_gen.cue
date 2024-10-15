package res

#aws_fsx_openzfs_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_openzfs_snapshot")
	arn?:           string
	creation_time?: string
	id?:            string
	name!:          string
	tags?: [string]:     string
	tags_all?: [string]: string
	volume_id!: string
	timeouts?:  #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
