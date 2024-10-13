package res

#aws_transcribe_vocabulary_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transcribe_vocabulary_filter")
	arn?:           string
	download_uri?:  string
	id?:            string
	language_code!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	vocabulary_filter_file_uri?: string
	vocabulary_filter_name!:     string
	words?: [...string]
}
