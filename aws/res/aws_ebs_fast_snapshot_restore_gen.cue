package res

#aws_ebs_fast_snapshot_restore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_fast_snapshot_restore")
	availability_zone!: string
	id?:                string
	snapshot_id!:       string
	state?:             string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
