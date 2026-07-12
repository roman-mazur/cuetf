package res

github_repository_collaborators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_collaborators")
	close({
		ignore_team?: matchN(1, [#ignore_team, [...#ignore_team]])
		team?: matchN(1, [#team, [...#team]])
		user?: matchN(1, [#user, [...#user]])
		id?: string

		// Map of usernames to invitation ID for users that haven't yet accepted their
		// invitation to become a collaborator. This is only set on read, and is used
		// internally to track pending invitations for users that aren't yet
		// collaborators.
		invitation_ids?: [string]: string

		// Indicates whether the owner of a personal repository is configured as a collaborator.
		owner_configured?: bool

		// Name of the repository.
		repository!: string

		// ID of the repository.
		repository_id?: number
	})

	#ignore_team: close({
		// ID or slug of the team to ignore.
		team_id!: string
	})

	#team: close({
		// Permission to grant to the team. Must be one of `pull`, `triage`, `push`,
		// `maintain`, `admin` or the name of an existing [custom repository
		// role](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-peoples-access-to-your-organization-with-roles/managing-custom-repository-roles-for-an-organization)
		// within the organization. Defaults to `push`.
		permission?: string

		// ID or slug of the team to add to the repository as a collaborator.
		team_id!: string
	})

	#user: close({
		// Permission to grant to the user. Must be one of `pull`, `triage`, `push`,
		// `maintain`, `admin` or the name of an existing [custom repository
		// role](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-peoples-access-to-your-organization-with-roles/managing-custom-repository-roles-for-an-organization)
		// within the organization. Must be `push` for personal repositories. Defaults
		// to `push`.
		permission?: string

		// Login for the user to add to the repository as a collaborator.
		username!: string
	})
}
