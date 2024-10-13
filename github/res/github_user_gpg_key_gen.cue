package res

#github_user_gpg_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_user_gpg_key")
	armored_public_key!: string
	etag?:               string
	id?:                 string
	key_id?:             string
}
