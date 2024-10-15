package res

#github_repository_environment_deployment_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environment_deployment_policy")
	branch_pattern!: string
	environment!:    string
	id?:             string
	repository!:     string
}
