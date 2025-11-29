package res

#google_artifact_registry_repository_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_artifact_registry_repository_iam_policy")
	close({
		etag?:        string
		id?:          string
		location?:    string
		policy_data!: string
		project?:     string
		repository!:  string
	})
}
