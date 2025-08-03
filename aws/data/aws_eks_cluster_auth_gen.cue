package data

#aws_eks_cluster_auth: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_cluster_auth")
	close({
		id?:     string
		name!:   string
		region?: string
		token?:  string
	})
}
