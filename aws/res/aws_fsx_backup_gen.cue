package res

#aws_fsx_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_backup")
	close({
		arn?:            string
		timeouts?:       #timeouts
		file_system_id?: string
		id?:             string
		kms_key_id?:     string
		owner_id?:       string
		region?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:      string
		volume_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
