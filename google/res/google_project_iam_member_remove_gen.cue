package res

#google_project_iam_member_remove: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_project_iam_member_remove")
	close({
		id?: string

		// The IAM principal that should not have the target role.
		member!: string

		// The project id of the target project.
		project!: string

		// The target role that should be removed.
		role!: string
	})
}
