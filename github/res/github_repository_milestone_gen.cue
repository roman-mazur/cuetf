package res

#github_repository_milestone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_milestone")
	description?: string
	due_date?:    string
	id?:          string
	"number"?:    number
	owner!:       string
	repository!:  string
	state?:       string
	title!:       string
}
