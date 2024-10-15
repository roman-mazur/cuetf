package data

#github_users: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_users")
	emails?: [...string]
	id?: string
	logins?: [...string]
	node_ids?: [...string]
	unknown_logins?: [...string]
	usernames!: [...string]
}
