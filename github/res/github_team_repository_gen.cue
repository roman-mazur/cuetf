package res

#github_team_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_team_repository")
	close({
		// The permissions of team members regarding the repository. Must
		// be one of 'pull', 'triage', 'push', 'maintain', 'admin' or the
		// name of an existing custom repository role within the
		// organisation.
		permission?: string

		// The repository to add to the team.
		repository!: string
		etag?:       string

		// ID or slug of team
		team_id!: string
		id?:      string
	})
}
