package data

#aws_redshiftserverless_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_namespace")
	close({
		admin_username?:       string
		arn?:                  string
		db_name?:              string
		default_iam_role_arn?: string
		iam_roles?: [...string]
		id?:         string
		kms_key_id?: string
		log_exports?: [...string]
		namespace_id?:   string
		namespace_name!: string
		region?:         string
	})
}
