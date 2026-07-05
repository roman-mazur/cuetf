package res

google_active_directory_domain_trust: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_active_directory_domain_trust")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
		// of
		// https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
		domain!: string
		id?:     string

		// Whether the trusted side has forest/domain wide access or selective access to
		// an approved set of resources.
		selective_authentication?: bool
		project?:                  string

		// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
		target_dns_ip_addresses!: [...string]

		// The fully qualified target domain name which will be in trust with the current domain.
		target_domain_name!: string

		// The trust direction, which decides if the current domain is trusted,
		// trusting, or both. Possible values: ["INBOUND", "OUTBOUND", "BIDIRECTIONAL"]
		trust_direction!: string

		// The trust secret used for the handshake with the target domain. This will not be stored.
		trust_handshake_secret!: string

		// The type of trust represented by the trust resource. Possible values: ["FOREST", "EXTERNAL"]
		trust_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
