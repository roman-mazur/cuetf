package res

#aws_macie2_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_macie2_member")
	account_id!:                            string
	administrator_account_id?:              string
	arn?:                                   string
	email!:                                 string
	id?:                                    string
	invitation_disable_email_notification?: bool
	invitation_message?:                    string
	invite?:                                bool
	invited_at?:                            string
	master_account_id?:                     string
	relationship_status?:                   string
	status?:                                string
	tags?: [string]:     string
	tags_all?: [string]: string
	updated_at?: string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
