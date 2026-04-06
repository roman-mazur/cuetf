package res

#scaleway_instance_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_ip")
	close({
		timeouts?: #timeouts

		// The IP address
		address?: string
		id?:      string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The IP prefix
		prefix?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The reverse DNS for this IP
		reverse?: string

		// The server associated with this IP
		server_id?: string

		// The tags associated with the ip
		tags?: [...string]

		// The type of instance IP
		type?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		default?: string
	})
}
