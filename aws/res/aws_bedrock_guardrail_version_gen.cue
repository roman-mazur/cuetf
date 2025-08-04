package res

#aws_bedrock_guardrail_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_guardrail_version")
	close({
		timeouts?:      #timeouts
		description?:   string
		guardrail_arn!: string
		region?:        string
		skip_destroy?:  bool
		version?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
