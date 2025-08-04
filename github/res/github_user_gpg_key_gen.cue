package res

#github_user_gpg_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_user_gpg_key")
	close({
		armored_public_key!: string
		etag?:               string
		id?:                 string
		key_id?:             string
	})
}
