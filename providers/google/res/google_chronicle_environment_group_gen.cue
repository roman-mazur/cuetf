package res

google_chronicle_environment_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_environment_group")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The EnvironmentGroup description.
		// This value is optional. This value should be up to
		// 250 characters, and valid characters are /a-z-/.
		description!: string

		// The group name.
		display_name!: string

		// Id of the environment group record.
		environment_group_id?: string

		// The environment IDs for the group.
		environments_ids!: [...string]
		id?: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the environment group.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/environmentGroups/{environment_group}
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
