package res

#google_compute_router_nat_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_router_nat_address")
	close({
		// A list of URLs of the IP resources to be drained. These IPs
		// must be
		// valid static external IPs that have been assigned to the NAT.
		drain_nat_ips?: [...string]

		// Self-links of NAT IPs to be used in a Nat service. Only valid
		// if the referenced RouterNat
		// natIpAllocateOption is set to MANUAL_ONLY.
		nat_ips!: [...string]

		// Region where the NAT service reside.
		region?: string

		// The name of the Cloud Router in which the referenced NAT
		// service is configured.
		router!:   string
		id?:       string
		timeouts?: #timeouts
		project?:  string

		// The name of the Nat service in which this address will be
		// configured.
		router_nat!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
