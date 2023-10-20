package res

#aws_redshift_cluster_iam_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_cluster_iam_roles")
	cluster_identifier:    string
	default_iam_role_arn?: string
	iam_role_arns?: [...string]
	id?:       string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
