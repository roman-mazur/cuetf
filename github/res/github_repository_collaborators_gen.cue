package res

#github_repository_collaborators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_collaborators")
	close({
		ignore_team?: matchN(1, [#ignore_team, [...#ignore_team]])
		team?: matchN(1, [#team, [...#team]])
		user?: matchN(1, [#user, [...#user]])
		id?: string
		invitation_ids?: [string]: string
		repository!: string
	})

	#ignore_team: close({
		team_id!: string
	})

	#team: close({
		permission?: string
		team_id!:    string
	})

	#user: close({
		permission?: string
		username!:   string
	})
}
