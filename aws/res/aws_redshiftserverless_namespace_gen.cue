package res

#aws_redshiftserverless_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshiftserverless_namespace")
	close({
		admin_password_secret_arn?:        string
		admin_password_secret_kms_key_id?: string
		admin_user_password?:              string
		admin_user_password_wo?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		admin_user_password_wo_version?: number
		admin_username?:                 string
		arn?:                            string
		db_name?:                        string
		default_iam_role_arn?:           string
		iam_roles?: [...string]
		id?:         string
		kms_key_id?: string
		log_exports?: [...string]
		manage_admin_password?: bool
		namespace_id?:          string
		namespace_name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
