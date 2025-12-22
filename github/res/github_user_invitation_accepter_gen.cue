package res

#github_user_invitation_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_user_invitation_accepter")
	close({
		// Allow the ID to be unset. This will result in the resource
		// being skipped when the ID is not set instead of returning an
		// error.
		allow_empty_id?: bool
		id?:             string

		// ID of the invitation to accept. Must be set when
		// 'allow_empty_id' is 'false'.
		invitation_id?: string
	})
}
