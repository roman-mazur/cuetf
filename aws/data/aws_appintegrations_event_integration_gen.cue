package data

#aws_appintegrations_event_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appintegrations_event_integration")
	close({
		arn?:         string
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		event_filter?: [...close({
			source?: string
		})]
		eventbridge_bus?: string
		id?:              string
		name!:            string
		tags?: [string]: string
	})
}
