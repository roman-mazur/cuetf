package data

#google_network_connectivity_hub_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_network_connectivity_hub_iam_policy")
	close({
		etag?:        string
		hub!:         string
		id?:          string
		policy_data?: string
		project?:     string
	})
}
