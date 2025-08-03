package res

#aws_msk_cluster_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_cluster_policy")
	close({
		cluster_arn!:     string
		current_version?: string
		id?:              string
		policy!:          string
		region?:          string
	})
}
