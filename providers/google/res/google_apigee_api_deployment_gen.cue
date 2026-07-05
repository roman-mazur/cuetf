package res

google_apigee_api_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_api_deployment")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The Apigee Environment associated with the Apigee API deployment.
		environment!: string

		// The ID of the API deployment in the format
		// 'organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}/deployments'.
		id?: string

		// The Apigee Organization associated with the Apigee API deployment.
		org_id!: string

		// The Apigee API associated with the Apigee API deployment.
		proxy_id!: string

		// The revision of the API proxy to be deployed.
		revision!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
