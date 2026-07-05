package res

google_iap_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_client")
	close({
		timeouts?: #timeouts

		// Identifier of the brand to which this client
		// is attached to. The format is
		// 'projects/{project_number}/brands/{brand_id}'.
		brand!: string

		// Output only. Unique identifier of the OAuth client.
		client_id?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human-friendly name given to the OAuth client.
		display_name!: string
		id?:           string

		// Output only. Client secret of the OAuth client.
		secret?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
