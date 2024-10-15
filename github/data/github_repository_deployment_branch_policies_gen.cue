package data

#github_repository_deployment_branch_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_deployment_branch_policies")
	deployment_branch_policies?: [...{
		id?:   string
		name?: string
	}]
	environment_name!: string
	id?:               string
	repository!:       string
}
