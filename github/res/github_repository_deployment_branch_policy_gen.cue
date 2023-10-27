package res

#github_repository_deployment_branch_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_deployment_branch_policy")
	environment_name: string
	etag?:            string
	id?:              string
	name:             string
	repository:       string
}
