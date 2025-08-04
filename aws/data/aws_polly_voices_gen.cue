package data

#aws_polly_voices: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_polly_voices")
	close({
		voices?: matchN(1, [#voices, [...#voices]])
		engine?:                            string
		id?:                                string
		include_additional_language_codes?: bool
		language_code?:                     string
		region?:                            string
	})

	#voices: close({
		additional_language_codes?: [...string]
		gender?:        string
		id?:            string
		language_code?: string
		language_name?: string
		name?:          string
		supported_engines?: [...string]
	})
}
