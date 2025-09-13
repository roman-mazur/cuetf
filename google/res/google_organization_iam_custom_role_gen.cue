package res

#google_organization_iam_custom_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_organization_iam_custom_role")
	close({
		// The current deleted state of the role.
		deleted?: bool

		// A human-readable description for the role.
		description?: string

		// The name of the role in the format
		// organizations/{{org_id}}/roles/{{role_id}}. Like id, this
		// field can be used as a reference in other resources such as
		// IAM role bindings.
		name?: string

		// The numeric ID of the organization in which you want to create
		// a custom role.
		org_id!: string

		// The names of the permissions this role grants when bound in an
		// IAM policy. At least one permission must be specified.
		permissions!: [...string]
		id?: string

		// The role id to use for this role.
		role_id!: string

		// The current launch stage of the role. Defaults to GA.
		stage?: string

		// A human-readable title for the role.
		title!: string
	})
}
