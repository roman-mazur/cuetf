package data

#scaleway_instance_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_servers")
	close({
		id?: string

		// Servers with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Servers
		servers?: [...close({
			boot_type?:                        string
			bootscript_id?:                    string
			enable_dynamic_ip?:                bool
			id?:                               string
			image?:                            string
			name?:                             string
			organization_id?:                  string
			placement_group_id?:               string
			placement_group_policy_respected?: bool
			private_ips?: [...close({
				address?: string
				id?:      string
			})]
			project_id?: string
			public_ips?: [...close({
				address?: string
				id?:      string
			})]
			security_group_id?: string
			state?:             string
			tags?: [...string]
			type?: string
			zone?: string
		})]

		// Servers with these exact tags are listed.
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
