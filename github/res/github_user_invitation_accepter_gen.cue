package res

#github_user_invitation_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_user_invitation_accepter")
	allow_empty_id?: bool
	id?:             string
	invitation_id?:  string
}
