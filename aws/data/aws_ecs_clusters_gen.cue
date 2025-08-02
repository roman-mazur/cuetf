package data

#aws_ecs_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_clusters")
	close({
		cluster_arns?: [...string]
		region?: string
	})
}
