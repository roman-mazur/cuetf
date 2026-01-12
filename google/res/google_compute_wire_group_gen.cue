package res

import "list"

#google_compute_wire_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_wire_group")
	close({
		// Indicates whether the wire group is administratively enabled.
		admin_enabled?: bool

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Required cross site network to which wire group belongs.
		cross_site_network!: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be
		// 1-63 characters long, and comply with RFC1035. Specifically,
		// the name must be 1-63 characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
		// character must be a lowercase letter, and all following
		// characters must be a dash,
		// lowercase letter, or digit, except the last character, which
		// cannot be a dash.
		name!: string
		endpoints?: matchN(1, [#endpoints, [...#endpoints]])
		timeouts?: #timeouts
		wire_properties?: matchN(1, [#wire_properties, list.MaxItems(1) & [...#wire_properties]])
		project?: string

		// Topology details for the wire group configuration.
		topology?: [...close({
			endpoints?: [...close({
				city?:  string
				label?: string
			})]
		})]

		// The single/redundant wire(s) managed by the wire group.
		wires?: [...close({
			admin_enabled?: bool
			endpoints?: [...close({
				interconnect?: string
				vlan_tag?:     number
			})]
			label?: string
			wire_properties?: [...close({
				bandwidth_unmetered?: number
				fault_response?:      string
			})]
		})]
	})

	#endpoints: close({
		interconnects?: matchN(1, [_#defs."/$defs/endpoints/$defs/interconnects", [..._#defs."/$defs/endpoints/$defs/interconnects"]])
		endpoint!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#wire_properties: close({
		// The configuration of a wire's bandwidth allocation.
		// ALLOCATE_PER_WIRE: configures a separate unmetered bandwidth
		// allocation (and associated charges) for each wire in the
		// group.
		// SHARED_WITH_WIRE_GROUP: this is the default behavior, which
		// configures one unmetered bandwidth allocation for the wire
		// group. The unmetered bandwidth is divided equally across each
		// wire in the group, but dynamic
		// throttling reallocates unused unmetered bandwidth from unused
		// or underused wires to other wires in the group.
		bandwidth_allocation!: string

		// The unmetered bandwidth setting.
		bandwidth_unmetered?: number

		// Response when a fault is detected in a pseudowire:
		// NONE: default.
		// DISABLE_PORT: set the port line protocol down when inline
		// probes detect a fault. This setting is only permitted on port
		// mode pseudowires.
		fault_response?: string
	})

	_#defs: "/$defs/endpoints/$defs/interconnects": close({
		interconnect?:      string
		interconnect_name!: string

		// VLAN tags for the interconnect.
		vlan_tags?: [...number]
	})
}
