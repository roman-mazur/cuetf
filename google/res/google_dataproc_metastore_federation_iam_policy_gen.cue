package res

#google_dataproc_metastore_federation_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_metastore_federation_iam_policy")
	close({
		etag?:          string
		federation_id!: string
		id?:            string
		location?:      string
		policy_data!:   string
		project?:       string
	})
}
