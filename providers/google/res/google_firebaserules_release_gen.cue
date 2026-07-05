package res

google_firebaserules_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebaserules_release")
	close({
		timeouts?: #timeouts

		// Output only. Time the release was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Disable the release to keep it from being served. The response code of
		// NOT_FOUND will be given for executables generated from this Release.
		disabled?: bool
		id?:       string

		// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules
		// Releases will **always** have the name 'cloud.firestore'
		name!: string

		// The project for the resource
		project?: string

		// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist
		// for the `Release` to be created.
		ruleset_name!: string

		// Output only. Time the release was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
