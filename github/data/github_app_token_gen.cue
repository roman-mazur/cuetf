package data

#github_app_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_app_token")
	close({
		app_id!:          string
		id?:              string
		installation_id!: string
		pem_file!:        string
		token?:           string
	})
}
