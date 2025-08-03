package res

#aws_securityhub_invite_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_invite_accepter")
	close({
		id?:            string
		invitation_id?: string
		master_id!:     string
		region?:        string
	})
}
