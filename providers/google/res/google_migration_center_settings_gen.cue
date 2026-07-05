package res

google_migration_center_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_settings")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Disable Cloud Logging for the Migration Center API.
		// Users are billed for the logs.
		disable_cloud_logging?: bool
		id?:                    string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The name of the resource.
		name?: string

		// The preference set used by default for a project.
		preference_set?: string
		project?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
