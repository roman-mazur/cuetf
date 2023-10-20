package res

#aws_fsx_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_backup")
	arn?:            string
	file_system_id?: string
	id?:             string
	kms_key_id?:     string
	owner_id?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	type?:      string
	volume_id?: string
	timeouts?:  #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
