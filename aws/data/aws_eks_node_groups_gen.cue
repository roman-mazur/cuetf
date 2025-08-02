package data

#aws_eks_node_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_node_groups")
	close({
		cluster_name!: string
		id?:           string
		names?: [...string]
		region?: string
	})
}
