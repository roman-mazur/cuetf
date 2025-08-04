package data

#aws_polly_voices: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_polly_voices")
	close({
		engine?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		id?:                                string
		include_additional_language_codes?: bool
		language_code?:                     string
		voices?: matchN(1, [#voices, [...#voices]])
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
