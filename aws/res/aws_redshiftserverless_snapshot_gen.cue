package res

#aws_redshiftserverless_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_snapshot")
	close({
		accounts_with_provisioned_restore_access?: [...string]
		accounts_with_restore_access?: [...string]
		admin_username?: string
		arn?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		id?:               string
		kms_key_id?:       string
		namespace_arn?:    string
		namespace_name!:   string
		owner_account?:    string
		retention_period?: number
		snapshot_name!:    string
	})
}
