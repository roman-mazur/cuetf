package res

#scaleway_instance_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_security_group")
	close({
		// The description of the security group
		description?: string
		inbound_rule?: matchN(1, [#inbound_rule, [...#inbound_rule]])

		// Enable blocking of SMTP on IPv4 and IPv6
		enable_default_security?: bool
		outbound_rule?: matchN(1, [#outbound_rule, [...#outbound_rule]])

		// External rules for this security group
		external_rules?: bool

		// Default inbound traffic policy for this security group
		inbound_default_policy?: string
		id?:                     string

		// The name of the security group
		name?:     string
		timeouts?: #timeouts

		// The organization_id you want to attach the resource to
		organization_id?: string

		// Default outbound traffic policy for this security group
		outbound_default_policy?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The stateful value of the security group
		stateful?: bool

		// The tags associated with the security group
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#inbound_rule: close({
		// Action when rule match request (drop or accept)
		action!: string

		// Ip range for this rule (e.g: 192.168.1.0/24). Only one of ip or
		// ip_range should be provided
		ip_range?: string

		// Network port for this rule
		port?: number

		// Computed port range for this rule (e.g: 1-1024, 22-22)
		port_range?: string

		// Protocol for this rule (TCP, UDP, ICMP or ANY)
		protocol?: string
	})

	#outbound_rule: close({
		// Action when rule match request (drop or accept)
		action!: string

		// Ip range for this rule (e.g: 192.168.1.0/24). Only one of ip or
		// ip_range should be provided
		ip_range?: string

		// Network port for this rule
		port?: number

		// Computed port range for this rule (e.g: 1-1024, 22-22)
		port_range?: string

		// Protocol for this rule (TCP, UDP, ICMP or ANY)
		protocol?: string
	})

	#timeouts: close({
		default?: string
	})
}
