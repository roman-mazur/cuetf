package res

google_service_networking_peered_dns_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_peered_dns_domain")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The DNS domain name suffix of the peered DNS domain.
		dns_suffix!: string
		id?:         string

		// Name of the peered DNS domain.
		name!: string

		// Network in the consumer project to peer with.
		network!: string

		// The ID of the project that the service account will be created in. Defaults
		// to the provider project configuration.
		project?: string
		parent?:  string

		// The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com
		service?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
