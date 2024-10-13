package res

#aws_bedrock_guardrail_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrock_guardrail_version")
	description?:   string
	guardrail_arn!: string
	skip_destroy?:  bool
	version?:       string
	timeouts?:      #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
