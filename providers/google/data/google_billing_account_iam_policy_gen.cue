package data

#google_billing_account_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_billing_account_iam_policy")
	close({
		billing_account_id!: string
		etag?:               string
		id?:                 string
		policy_data?:        string
	})
}
