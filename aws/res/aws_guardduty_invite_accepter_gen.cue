package res

#aws_guardduty_invite_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_guardduty_invite_accepter")
	detector_id!:       string
	id?:                string
	master_account_id!: string
	timeouts?:          #timeouts

	#timeouts: create?: string
}
