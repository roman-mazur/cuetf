package res

#aws_guardduty_invite_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_invite_accepter")
	close({
		detector_id!:       string
		id?:                string
		master_account_id!: string
		region?:            string
		timeouts?:          #timeouts
	})

	#timeouts: close({
		create?: string
	})
}
