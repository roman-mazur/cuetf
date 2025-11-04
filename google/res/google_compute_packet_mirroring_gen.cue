package res

import "list"

#google_compute_packet_mirroring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_packet_mirroring")
	close({
		// A human-readable description of the rule.
		description?: string
		collector_ilb!: matchN(1, [#collector_ilb, list.MaxItems(1) & [_, ...] & [...#collector_ilb]])

		// The name of the packet mirroring rule
		name!: string
		id?:   string

		// Since only one rule can be active at a time, priority is
		// used to break ties in the case of two rules that apply to
		// the same instances.
		priority?: number
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		mirrored_resources!: matchN(1, [#mirrored_resources, list.MaxItems(1) & [_, ...] & [...#mirrored_resources]])
		network!: matchN(1, [#network, list.MaxItems(1) & [_, ...] & [...#network]])

		// The Region in which the created address should reside.
		// If it is not provided, the provider region is used.
		region?:   string
		project?:  string
		timeouts?: #timeouts
	})

	#collector_ilb: close({
		// The URL of the forwarding rule.
		url!: string
	})

	#filter: close({
		// IP CIDR ranges that apply as a filter on the source (ingress)
		// or
		// destination (egress) IP in the IP header. Only IPv4 is
		// supported.
		cidr_ranges?: [...string]

		// Direction of traffic to mirror. Default value: "BOTH" Possible
		// values: ["INGRESS", "EGRESS", "BOTH"]
		direction?: string

		// Possible IP protocols including tcp, udp, icmp and esp
		ip_protocols?: [...string]
	})

	#mirrored_resources: close({
		instances?: matchN(1, [_#defs."/$defs/mirrored_resources/$defs/instances", [..._#defs."/$defs/mirrored_resources/$defs/instances"]])
		subnetworks?: matchN(1, [_#defs."/$defs/mirrored_resources/$defs/subnetworks", [..._#defs."/$defs/mirrored_resources/$defs/subnetworks"]])

		// All instances with these tags will be mirrored.
		tags?: [...string]
	})

	#network: close({
		// The full self_link URL of the network where this rule is
		// active.
		url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/mirrored_resources/$defs/instances": close({
		// The URL of the instances where this rule should be active.
		url!: string
	})

	_#defs: "/$defs/mirrored_resources/$defs/subnetworks": close({
		// The URL of the subnetwork where this rule should be active.
		url!: string
	})
}
