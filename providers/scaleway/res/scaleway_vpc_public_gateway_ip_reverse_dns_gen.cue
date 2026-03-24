package res

#scaleway_vpc_public_gateway_ip_reverse_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_public_gateway_ip_reverse_dns")
	close({
		timeouts?: #timeouts

		// The IP ID
		gateway_ip_id!: string
		id?:            string

		// The reverse DNS for this IP
		reverse!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		update?:  string
	})
}
