package res

#aws_guardduty_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_guardduty_member")
	close({
		account_id!:  string
		detector_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		disable_email_notification?: bool
		email!:                      string
		id?:                         string
		invitation_message?:         string
		invite?:                     bool
		relationship_status?:        string
		timeouts?:                   #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
