package res

#google_notebooks_instance_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_notebooks_instance_iam_policy")
	close({
		etag?:          string
		id?:            string
		instance_name!: string
		location?:      string
		policy_data!:   string
		project?:       string
	})
}
