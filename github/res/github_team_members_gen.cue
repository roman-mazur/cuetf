package res

#github_team_members: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_members")
	id?:      string
	team_id!: string
	members?: #members | [_, ...] & [...#members]

	#members: {
		role?:     string
		username!: string
	}
}
