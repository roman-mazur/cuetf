package res

#scaleway_instance_ip_reverse_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_ip_reverse_dns")
	close({
		timeouts?: #timeouts
		id?:       string

		// The IP ID or IP address
		ip_id!: string

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
