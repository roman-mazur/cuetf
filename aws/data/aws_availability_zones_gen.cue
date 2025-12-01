package data

#aws_availability_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_availability_zones")
	close({
		all_availability_zones?: bool
		exclude_names?: [...string]
		exclude_zone_ids?: [...string]
		group_names?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		names?: [...string]
		state?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		zone_ids?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
