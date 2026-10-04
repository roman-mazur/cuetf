package res

google_resource_manager_capability_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_resource_manager_capability_config")
	close({
		timeouts?: #timeouts

		// User-specified identifier of the capability config. Must be 6 to 30 characters,
		// and contain only lowercase letters, numbers, and hyphens.
		capability_config_id!: string

		// The time when the capability config was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User-defined name for the capability config. Must be between 4 and 30 characters.
		display_name?: string

		// An opaque tag indicating the current version of the capability config, used
		// for concurrency control.
		etag?: string
		id?:   string

		// The management project for the capability config. If unspecified, a project
		// will be created automatically.
		// Must be specified for project-scoped capability config.
		// Format: 'projects/{project_number}'.
		management_project?: string

		// The identifier for the capability config.
		// Format: '{parent}/capabilityConfigs/{capability_config_id}'.
		name?: string

		// The parent resource in which to create the capability config.
		// Format: 'folders/{folder_id}', 'organizations/{organization_id}', or 'projects/{project_number}'.
		parent!: string

		// The state of the capability config.
		state?: string

		// The capabilities enabled for the resource and its sub-tree.
		// Possible values: "AGENT_MANAGEMENT".
		types!: [...string]

		// The time when the capability config was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
