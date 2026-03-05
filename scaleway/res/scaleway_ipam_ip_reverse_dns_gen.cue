package res

#scaleway_ipam_ip_reverse_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_ipam_ip_reverse_dns")
	close({
		timeouts?: #timeouts

		// The IP corresponding to the hostname
		address!: string

		// The reverse domain name
		hostname!: string
		id?:       string

		// The IPAM IP ID
		ipam_ip_id!: string

		// The region you want to attach the resource to
		region?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		update?:  string
	})
}
