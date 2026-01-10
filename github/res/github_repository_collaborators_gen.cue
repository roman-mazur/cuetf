package res

#github_repository_collaborators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_collaborators")
	close({
		id?: string
		ignore_team?: matchN(1, [#ignore_team, [...#ignore_team]])
		team?: matchN(1, [#team, [...#team]])
		user?: matchN(1, [#user, [...#user]])

		// Map of usernames to invitation ID for any users added
		invitation_ids?: [string]: string
		repository!: string
	})

	#ignore_team: close({
		// ID or slug of the team to ignore.
		team_id!: string
	})

	#team: close({
		permission?: string

		// Team ID or slug to add to the repository as a collaborator.
		team_id!: string
	})

	#user: close({
		permission?: string

		// (Required) The user to add to the repository as a collaborator.
		username!: string
	})
}
