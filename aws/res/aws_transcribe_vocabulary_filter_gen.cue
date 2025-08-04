package res

#aws_transcribe_vocabulary_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transcribe_vocabulary_filter")
	close({
		arn?:           string
		download_uri?:  string
		id?:            string
		language_code!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vocabulary_filter_file_uri?: string
		vocabulary_filter_name!:     string
		words?: [...string]
	})
}
