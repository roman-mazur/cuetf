package res

#google_apigee_sharedflow_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_sharedflow_deployment")
	close({
		timeouts?: #timeouts

		// The resource ID of the environment.
		environment!: string
		id?:          string

		// The Apigee Organization associated with the Apigee instance
		org_id!: string

		// Revision of the Sharedflow to be deployed.
		revision!: string

		// The service account represents the identity of the deployed
		// proxy, and determines what permissions it has. The format must
		// be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
		service_account?: string

		// Id of the Sharedflow to be deployed.
		sharedflow_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
