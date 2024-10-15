package res

#aws_connect_vocabulary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_vocabulary")
	arn?:                string
	content!:            string
	failure_reason?:     string
	id?:                 string
	instance_id!:        string
	language_code!:      string
	last_modified_time?: string
	name!:               string
	state?:              string
	tags?: [string]:     string
	tags_all?: [string]: string
	vocabulary_id?: string
	timeouts?:      #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
