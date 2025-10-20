package res

#aws_quicksight_account_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_account_subscription")
	close({
		account_name!:                string
		account_subscription_status?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		active_directory_name?: string
		admin_group?: [...string]
		admin_pro_group?: [...string]
		authentication_method!: string
		author_group?: [...string]
		author_pro_group?: [...string]
		aws_account_id?:                   string
		contact_number?:                   string
		directory_id?:                     string
		timeouts?:                         #timeouts
		edition!:                          string
		email_address?:                    string
		first_name?:                       string
		iam_identity_center_instance_arn?: string
		id?:                               string
		last_name?:                        string
		notification_email!:               string
		reader_group?: [...string]
		reader_pro_group?: [...string]
		realm?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
