package res

#aws_msk_cluster_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_msk_cluster_policy")
	cluster_arn!:     string
	current_version?: string
	id?:              string
	policy!:          string
}
