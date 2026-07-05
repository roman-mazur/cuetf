package res

google_ces_app_root_agent_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_app_root_agent_association")
	close({
		timeouts?: #timeouts

		// The ID or fully qualified resource name of the agent to associate as the
		// root agent of the app.
		agent_id!: string

		// The ID of the App. Used to construct the app resource name.
		app_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The location of the App.
		location!: string
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
