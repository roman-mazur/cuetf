package data

#scaleway_instance_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_security_group")
	close({
		// The description of the security group
		description?: string

		// Enable blocking of SMTP on IPv4 and IPv6
		enable_default_security?: bool

		// External rules for this security group
		external_rules?: bool
		id?:             string

		// Default inbound traffic policy for this security group
		inbound_default_policy?: string

		// Inbound rules for this security group
		inbound_rule?: [...close({
			action?:     string
			ip?:         string
			ip_range?:   string
			port?:       number
			port_range?: string
			protocol?:   string
		})]

		// The name of the security group
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// Default outbound traffic policy for this security group
		outbound_default_policy?: string

		// Outbound rules for this security group
		outbound_rule?: [...close({
			action?:     string
			ip?:         string
			ip_range?:   string
			port?:       number
			port_range?: string
			protocol?:   string
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// The ID of the security group
		security_group_id?: string

		// The stateful value of the security group
		stateful?: bool

		// The tags associated with the security group
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
