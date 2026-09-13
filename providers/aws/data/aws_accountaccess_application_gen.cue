package data

aws_accountaccess_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_accountaccess_application")
	close({
		arn?:                          string
		created_at?:                   string
		identity_center_instance_arn?: string
		identity_source?: [...close({
			identity_center?: [...close({
				application_arn?: string
				instance_arn?:    string
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		tags?: [string]: string
		tenant_id?:  string
		updated_at?: string
	})
}
