package data

#aws_rds_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_clusters")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		cluster_arns?: [...string]
		cluster_identifiers?: [...string]
		id?:     string
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
