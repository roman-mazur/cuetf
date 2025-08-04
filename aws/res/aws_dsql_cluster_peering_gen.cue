package res

#aws_dsql_cluster_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dsql_cluster_peering")
	close({
		timeouts?: #timeouts
		clusters!: [...string]
		identifier!:     string
		region?:         string
		witness_region!: string
	})

	#timeouts: close({
		create?: string
	})
}
