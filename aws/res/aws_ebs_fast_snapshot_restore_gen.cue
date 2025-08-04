package res

#aws_ebs_fast_snapshot_restore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_fast_snapshot_restore")
	close({
		timeouts?:          #timeouts
		availability_zone!: string
		id?:                string
		region?:            string
		snapshot_id!:       string
		state?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
