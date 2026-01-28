package res

#aws_ecs_cluster_capacity_providers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecs_cluster_capacity_providers")
	close({
		capacity_providers?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		cluster_name!: string
		id?:           string
		default_capacity_provider_strategy?: matchN(1, [#default_capacity_provider_strategy, [...#default_capacity_provider_strategy]])
	})

	#default_capacity_provider_strategy: close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})
}
