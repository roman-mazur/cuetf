package res

google_iap_tunnel_dest_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_tunnel_dest_group")
	close({
		timeouts?: #timeouts

		// List of CIDRs that this group applies to.
		cidrs?: [...string]

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// List of FQDNs that this group applies to.
		fqdns?: [...string]

		// Unique tunnel destination group name.
		group_name!: string
		id?:         string

		// Full resource name.
		name?: string

		// The region of the tunnel group. Must be the same as the network resources in the group.
		region?:  string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
