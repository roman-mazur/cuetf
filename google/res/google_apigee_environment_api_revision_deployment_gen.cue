package res

#google_apigee_environment_api_revision_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_environment_api_revision_deployment")
	close({
		// Apigee API proxy name.
		api!: string

		// Basepaths associated with the deployed proxy.
		basepaths?: [...string]

		// RFC3339 timestamp when deployment started.
		deploy_start_time?: string

		// Apigee environment name.
		environment!: string

		// Apigee organization ID.
		org_id!: string

		// If true, replaces other deployed revisions of this proxy in the
		// environment.
		override?: bool

		// API proxy revision number to deploy.
		revision!: number
		id?:       string

		// If true, enables sequenced rollout for safe traffic switching.
		sequenced_rollout?: bool
		timeouts?:          #timeouts

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
