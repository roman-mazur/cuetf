package data

#google_service_networking_peered_dns_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_service_networking_peered_dns_domain")
	close({
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
		dns_suffix?:      string
		id?:              string
		name!:            string
		network!:         string
		parent?:          string
		project!:         string
		service!:         string
	})
}
