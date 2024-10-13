package data

#aws_polly_voices: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_polly_voices")
	engine?:                            string
	id?:                                string
	include_additional_language_codes?: bool
	language_code?:                     string
	voices?: #voices | [...#voices]

	#voices: {
		additional_language_codes?: [...string]
		gender?:        string
		id?:            string
		language_code?: string
		language_name?: string
		name?:          string
		supported_engines?: [...string]
	}
}
