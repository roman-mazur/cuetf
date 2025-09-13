package data

#google_container_analysis_note_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_analysis_note_iam_policy")
	close({
		etag?:        string
		id?:          string
		note!:        string
		policy_data?: string
		project?:     string
	})
}
