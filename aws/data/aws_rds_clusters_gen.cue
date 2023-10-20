package data

#aws_rds_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_clusters")
	cluster_arns?: [...string]
	cluster_identifiers?: [...string]
	id?:     string
	filter?: #filter | [...#filter]

	#filter: {
		name: string
		values: [...string]
	}
}
