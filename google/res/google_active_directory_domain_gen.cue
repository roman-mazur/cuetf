package res

#google_active_directory_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_active_directory_domain")
	close({
		// The name of delegated administrator account used to perform
		// Active Directory operations.
		// If not specified, setupadmin will be used.
		admin?: string

		// The full names of the Google Compute Engine networks the domain
		// instance is connected to. The domain is only available on
		// networks listed in authorizedNetworks.
		// If CIDR subnets overlap between networks, domain creation will
		// fail.
		authorized_networks?: [...string]

		// Whether Terraform will be prevented from destroying the domain.
		// Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// domain,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the domain will fail.
		// When the field is set to false, deleting the domain is allowed.
		deletion_protection?: bool

		// The fully qualified domain name. e.g.
		// mydomain.myorganization.com, with the restrictions
		// of
		// https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
		domain_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The fully-qualified domain name of the exposed domain used by
		// clients to connect to the service.
		// Similar to what would be chosen for an Active Directory set up
		// on an internal network.
		fqdn?: string
		id?:   string

		// Resource labels that can contain user-provided metadata
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Locations where domain needs to be provisioned.
		// [regions][compute/docs/regions-zones/]
		// e.g. us-west1 or us-east4 Service supports up to 4 locations at
		// once. Each location will use a /26 block.
		locations!: [...string]
		timeouts?: #timeouts

		// The unique name of the domain using the format:
		// 'projects/{project}/locations/global/domains/{domainName}'.
		name?:    string
		project?: string

		// The CIDR range of internal addresses that are reserved for this
		// domain. Reserved networks must be /24 or larger.
		// Ranges must be unique and non-overlapping with existing subnets
		// in authorizedNetworks
		reserved_ip_range!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
