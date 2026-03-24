package data

#scaleway_iam_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_group")
	close({
		// List of IDs of the applications attached to the group
		application_ids?: [...string]

		// The date and time of the creation of the group
		created_at?: string

		// The description of the iam group
		description?: string

		// Handle user and application memberships externally
		external_membership?: bool

		// The ID of the IAM group
		group_id?: string
		id?:       string

		// The name of the iam group
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The tags associated with the application
		tags?: [...string]

		// The date and time of the last update of the group
		updated_at?: string

		// List of IDs of the users attached to the group
		user_ids?: [...string]
	})
}
