package res

aws_bedrock_enforced_guardrail_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrock_enforced_guardrail_configuration")
	close({
		model_enforcement?: matchN(1, [#model_enforcement, [...#model_enforcement]])
		selective_content_guarding?: matchN(1, [#selective_content_guarding, [...#selective_content_guarding]])
		config_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		guardrail_arn!:     string
		guardrail_id?:      string
		guardrail_version!: string
		owner?:             string
	})

	#model_enforcement: close({
		excluded_models!: [...string]
		included_models!: [...string]
	})

	#selective_content_guarding: close({
		messages?: string
		system?:   string
	})
}
