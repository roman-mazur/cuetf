package res

#aws_redshift_cluster_iam_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster_iam_roles")
	close({
		cluster_identifier!:   string
		timeouts?:             #timeouts
		default_iam_role_arn?: string
		iam_role_arns?: [...string]
		id?:     string
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
