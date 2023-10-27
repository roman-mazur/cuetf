package res

#github_repository_collaborators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_collaborators")
	id?: string
	invitation_ids?: [string]: string
	repository: string
	team?:      #team | [...#team]
	user?:      #user | [...#user]

	#team: {
		permission?: string
		team_id:     string
	}

	#user: {
		permission?: string
		username:    string
	}
}
