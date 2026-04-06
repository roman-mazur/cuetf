package data

#google_iap_web_forwarding_rule_service_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iap_web_forwarding_rule_service_iam_policy")
	close({
		etag?:                         string
		forwarding_rule_service_name!: string
		id?:                           string
		policy_data?:                  string
		project?:                      string
	})
}
