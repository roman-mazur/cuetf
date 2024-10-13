package res

#aws_transcribe_vocabulary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transcribe_vocabulary")
	arn?:           string
	download_uri?:  string
	id?:            string
	language_code!: string
	phrases?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	vocabulary_file_uri?: string
	vocabulary_name!:     string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
