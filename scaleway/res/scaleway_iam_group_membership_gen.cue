package res

#scaleway_iam_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_group_membership")
	close({
		// The ID of the user
		application_id?: string

		// The ID of the group to add the user to
		group_id!: string
		id?:       string

		// The ID of the user
		user_id?: string
	})
}
