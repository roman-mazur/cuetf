package data

#aws_vpcs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpcs")
	close({
		id?: string
		ids?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
