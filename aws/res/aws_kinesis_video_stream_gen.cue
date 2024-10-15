package res

#aws_kinesis_video_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_video_stream")
	arn?:                     string
	creation_time?:           string
	data_retention_in_hours?: number
	device_name?:             string
	id?:                      string
	kms_key_id?:              string
	media_type?:              string
	name!:                    string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?:  string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
