package res

#github_user_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_user_ssh_key")
	etag?:  string
	id?:    string
	key!:   string
	title!: string
	url?:   string
}
