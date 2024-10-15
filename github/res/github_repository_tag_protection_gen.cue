package res

#github_repository_tag_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_tag_protection")
	id?:                string
	pattern!:           string
	repository!:        string
	tag_protection_id?: number
}
