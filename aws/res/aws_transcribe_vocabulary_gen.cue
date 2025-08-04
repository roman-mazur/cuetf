package res

#aws_transcribe_vocabulary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transcribe_vocabulary")
	close({
		arn?:           string
		download_uri?:  string
		id?:            string
		language_code!: string
		phrases?: [...string]
		region?: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		vocabulary_file_uri?: string
		vocabulary_name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
