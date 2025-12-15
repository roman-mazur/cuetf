package res

#aws_macie2_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_macie2_member")
	close({
		account_id!:                            string
		administrator_account_id?:              string
		arn?:                                   string
		email!:                                 string
		id?:                                    string
		invitation_disable_email_notification?: bool
		invitation_message?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		timeouts?:            #timeouts
		invite?:              bool
		invited_at?:          string
		master_account_id?:   string
		relationship_status?: string
		status?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
