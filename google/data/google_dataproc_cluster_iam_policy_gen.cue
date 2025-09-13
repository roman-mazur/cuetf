package data

#google_dataproc_cluster_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_cluster_iam_policy")
	close({
		cluster!:     string
		etag?:        string
		id?:          string
		policy_data?: string
		project?:     string
		region?:      string
	})
}
