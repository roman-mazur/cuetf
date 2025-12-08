package data

#google_project_iam_custom_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_project_iam_custom_role")
	close({
		// The current deleted state of the role.
		deleted?: bool

		// A human-readable description for the role.
		description?: string

		// The name of the role in the format
		// projects/{{project}}/roles/{{role_id}}. Like id, this field
		// can be used as a reference in other resources such as IAM role
		// bindings.
		name?: string

		// The names of the permissions this role grants when bound in an
		// IAM policy. At least one permission must be specified.
		permissions?: [...string]

		// The project that the service account will be created in.
		// Defaults to the provider project configuration.
		project?: string
		id?:      string

		// The camel case role id to use for this role. Cannot contain -
		// characters.
		role_id!: string

		// The current launch stage of the role. Defaults to GA.
		stage?: string

		// A human-readable title for the role.
		title?: string
	})
}
