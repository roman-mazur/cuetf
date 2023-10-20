package res

#aws_securityhub_invite_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securityhub_invite_accepter")
	id?:            string
	invitation_id?: string
	master_id:      string
}
