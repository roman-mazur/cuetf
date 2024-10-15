package res

#aws_ecs_cluster_capacity_providers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_cluster_capacity_providers")
	capacity_providers?: [...string]
	cluster_name!: string
	id?:           string
	default_capacity_provider_strategy?: #default_capacity_provider_strategy | [...#default_capacity_provider_strategy]

	#default_capacity_provider_strategy: {
		base?:              number
		capacity_provider!: string
		weight?:            number
	}
}
