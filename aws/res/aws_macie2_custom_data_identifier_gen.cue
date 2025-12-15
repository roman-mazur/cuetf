package res

#aws_macie2_custom_data_identifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_macie2_custom_data_identifier")
	close({
		arn?:         string
		created_at?:  string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		ignore_words?: [...string]
		keywords?: [...string]
		timeouts?:               #timeouts
		maximum_match_distance?: number
		name?:                   string
		name_prefix?:            string
		regex?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
	})
}
