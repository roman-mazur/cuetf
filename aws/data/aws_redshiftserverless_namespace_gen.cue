package data

#aws_redshiftserverless_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_redshiftserverless_namespace")
	close({
		admin_username?: string
		arn?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		db_name?:              string
		default_iam_role_arn?: string
		iam_roles?: [...string]
		id?:         string
		kms_key_id?: string
		log_exports?: [...string]
		namespace_id?:   string
		namespace_name!: string
	})
}
