package res

google_apigee_environment_api_revision_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment_api_revision_deployment")
	close({
		timeouts?: #timeouts

		// Apigee API proxy name.
		api!: string

		// Basepaths associated with the deployed proxy.
		basepaths?: [...string]

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// RFC3339 timestamp when deployment started.
		deploy_start_time?: string

		// Apigee environment name.
		environment!: string
		id?:          string

		// Apigee organization ID.
		org_id!: string

		// If true, replaces other deployed revisions of this proxy in the environment.
		override?: bool

		// API proxy revision number to deploy.
		revision!: number

		// If true, enables sequenced rollout for safe traffic switching.
		sequenced_rollout?: bool

		// Optional service account the deployed proxy runs as.
		service_account?: string

		// Deployment state reported by Apigee.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
