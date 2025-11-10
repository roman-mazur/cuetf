package res

#aws_dynamodb_global_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_global_table")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name!:   string
		replica!: matchN(1, [#replica, [_, ...] & [...#replica]])
		timeouts?: #timeouts
	})

	#replica: close({
		region_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
