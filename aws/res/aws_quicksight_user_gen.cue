package res

#aws_quicksight_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_quicksight_user")
	close({
		arn?:            string
		aws_account_id?: string
		email!:          string
		iam_arn?:        string
		id?:             string
		identity_type!:  string
		namespace?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		session_name?:        string
		user_invitation_url?: string
		user_name?:           string
		user_role!:           string
	})
}
