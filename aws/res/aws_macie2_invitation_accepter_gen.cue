package res

#aws_macie2_invitation_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_invitation_accepter")
	close({
		timeouts?:                 #timeouts
		administrator_account_id!: string
		id?:                       string
		invitation_id?:            string
		region?:                   string
	})

	#timeouts: close({
		create?: string
	})
}
