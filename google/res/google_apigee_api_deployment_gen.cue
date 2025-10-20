package res

#google_apigee_api_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_api_deployment")
	close({
		// The Apigee Environment associated with the Apigee API
		// deployment.
		environment!: string

		// The ID of the API deployment in the format
		// 'organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}/deployments'.
		id?: string

		// The Apigee Organization associated with the Apigee API
		// deployment.
		org_id!: string

		// The Apigee API associated with the Apigee API deployment.
		proxy_id!: string
		timeouts?: #timeouts

		// The revision of the API proxy to be deployed.
		revision!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
