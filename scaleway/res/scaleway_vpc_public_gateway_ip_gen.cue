package res

#scaleway_vpc_public_gateway_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_public_gateway_ip")
	close({
		// the IP itself
		address?: string

		// The date and time of the creation of the public gateway IP
		created_at?: string
		id?:         string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// reverse domain name for the IP address
		reverse?: string

		// The tags associated with public gateway IP
		tags?: [...string]

		// The date and time of the last update of the public gateway IP
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
