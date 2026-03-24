package data

#scaleway_iam_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_user")
	close({
		// The email address of the IAM user
		email?: string
		id?:    string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The tags associated with the user
		tags?: [...string]

		// The ID of the IAM user
		user_id?: string
	})
}
