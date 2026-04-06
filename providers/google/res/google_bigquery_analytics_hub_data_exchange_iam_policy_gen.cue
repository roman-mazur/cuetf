package res

#google_bigquery_analytics_hub_data_exchange_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_data_exchange_iam_policy")
	close({
		data_exchange_id!: string
		etag?:             string
		id?:               string
		location?:         string
		policy_data!:      string
		project?:          string
	})
}
