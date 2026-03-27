package res

#scaleway_instance_security_group_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_security_group_rules")
	close({
		inbound_rule?: matchN(1, [#inbound_rule, [...#inbound_rule]])
		outbound_rule?: matchN(1, [#outbound_rule, [...#outbound_rule]])
		timeouts?: #timeouts
		id?:       string

		// The security group associated with this volume
		security_group_id!: string
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
