package data

#aws_mq_broker_engine_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_mq_broker_engine_types")
	close({
		broker_engine_types?: [...close({
			engine_type?: string
			engine_versions?: [...close({
				name?: string
			})]
		})]
		engine_type?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
