package res

#aws_snapshot_create_volume_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_snapshot_create_volume_permission")
	account_id!:  string
	id?:          string
	snapshot_id!: string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
