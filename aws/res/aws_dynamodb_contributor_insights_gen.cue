package res

#aws_dynamodb_contributor_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_contributor_insights")
	close({
		id?:         string
		index_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		mode?:       string
		table_name!: string
		timeouts?:   #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
