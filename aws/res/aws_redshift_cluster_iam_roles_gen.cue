package res

#aws_redshift_cluster_iam_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster_iam_roles")
	close({
		cluster_identifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		default_iam_role_arn?: string
		iam_role_arns?: [...string]
		id?:       string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
