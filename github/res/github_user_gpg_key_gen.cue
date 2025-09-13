package res

#github_user_gpg_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_user_gpg_key")
	close({
		// Your public GPG key, generated in ASCII-armored format.
		armored_public_key!: string
		etag?:               string
		id?:                 string

		// The key ID of the GPG key.
		key_id?: string
	})
}
