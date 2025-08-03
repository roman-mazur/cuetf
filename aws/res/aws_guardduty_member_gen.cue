package res

#aws_guardduty_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_member")
	close({
		account_id!:                 string
		timeouts?:                   #timeouts
		detector_id!:                string
		disable_email_notification?: bool
		email!:                      string
		id?:                         string
		invitation_message?:         string
		invite?:                     bool
		region?:                     string
		relationship_status?:        string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
