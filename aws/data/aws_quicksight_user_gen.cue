package data

#aws_quicksight_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_quicksight_user")
	close({
		active?:                  bool
		arn?:                     string
		aws_account_id?:          string
		custom_permissions_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		email?:         string
		id?:            string
		identity_type?: string
		namespace?:     string
		principal_id?:  string
		user_name!:     string
		user_role?:     string
	})
}
