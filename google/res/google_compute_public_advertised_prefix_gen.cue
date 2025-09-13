package res

#google_compute_public_advertised_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_public_advertised_prefix")
	close({
		// An optional description of this resource.
		description?: string

		// The IPv4 address to be used for reverse DNS verification.
		dns_verification_ip!: string

		// The address range, in CIDR format, represented by this public
		// advertised prefix.
		ip_cidr_range!: string

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter, and
		// all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string
		id?:   string

		// Specifies how child public delegated prefix will be scoped.
		// pdpScope
		// must be one of: GLOBAL, REGIONAL
		// * REGIONAL: The public delegated prefix is regional only. The
		// provisioning will take a few minutes.
		// * GLOBAL: The public delegated prefix is global only. The
		// provisioning
		// will take ~4 weeks. Possible values: ["GLOBAL", "REGIONAL"]
		pdp_scope?: string
		timeouts?:  #timeouts
		project?:   string
		self_link?: string

		// Output Only. The shared secret to be used for reverse DNS
		// verification.
		shared_secret?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
