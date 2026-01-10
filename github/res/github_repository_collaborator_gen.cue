package res

#github_repository_collaborator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_collaborator")
	close({
		// ID of the invitation to be used in
		// 'github_user_invitation_accepter'
		invitation_id?: string
		id?:            string

		// The permission of the outside collaborator for the repository.
		// Must be one of 'pull', 'push', 'maintain', 'triage' or 'admin'
		// or the name of an existing custom repository role within the
		// organization for organization-owned repositories. Must be
		// 'push' for personal repositories. Defaults to 'push'.
		permission?: string

		// Suppress plan diffs for triage and maintain. Defaults to
		// 'false'.
		permission_diff_suppression?: bool

		// The GitHub repository
		repository!: string

		// The user to add to the repository as a collaborator.
		username!: string
	})
}
