package res

#google_container_azure_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_container_azure_client")
	close({
		timeouts?: #timeouts

		// The Azure Active Directory Application ID.
		application_id!: string

		// Output only. The PEM encoded x509 certificate.
		certificate?: string

		// Output only. The time at which this resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string

		// The Azure Active Directory Tenant ID.
		tenant_id!: string

		// Output only. A globally unique identifier for the client.
		uid?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
