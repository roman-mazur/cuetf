package res

google_apigee_sharedflow_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_sharedflow_deployment")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The resource ID of the environment.
		environment!: string
		id?:          string

		// The Apigee Organization associated with the Apigee instance
		org_id!: string

		// Revision of the Sharedflow to be deployed.
		revision!: string

		// The service account represents the identity of the deployed proxy, and
		// determines what permissions it has. The format must be
		// {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
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
