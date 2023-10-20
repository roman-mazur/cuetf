package res

#aws_macie2_invitation_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_macie2_invitation_accepter")
	administrator_account_id: string
	id?:                      string
	invitation_id?:           string
	timeouts?:                #timeouts

	#timeouts: create?: string
}
