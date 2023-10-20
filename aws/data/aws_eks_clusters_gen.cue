package data

#aws_eks_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_clusters")
	id?: string
	names?: [...string]
}
