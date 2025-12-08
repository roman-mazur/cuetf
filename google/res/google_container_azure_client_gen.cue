package res

#google_container_azure_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_container_azure_client")
	close({
		// The Azure Active Directory Application ID.
		application_id!: string

		// Output only. The PEM encoded x509 certificate.
		certificate?: string

		// Output only. The time at which this resource was created.
		create_time?: string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string

		// The Azure Active Directory Tenant ID.
		tenant_id!: string
		id?:        string
		timeouts?:  #timeouts

		// Output only. A globally unique identifier for the client.
		uid?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
