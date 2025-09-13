package res

#google_organization_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_organization_iam_policy")
	close({
		etag?: string
		id?:   string

		// The numeric ID of the organization in which you want to manage
		// the audit logging config.
		org_id!:      string
		policy_data!: string
	})
}
