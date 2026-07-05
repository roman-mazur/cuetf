package res

google_dialogflow_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_version")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The developer-provided description of this version.
		description?: string
		id?:          string

		// The unique identifier of this agent version.
		name?: string

		// The Flow to create an Version for.
		// Format: projects/<Project ID>/agent.
		parent?: string

		// The status of this version.
		status?: string

		// The sequential number of this version.
		version_number?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
