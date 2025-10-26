package res

import "list"

#google_compute_router: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_router")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Indicates if a router is dedicated for use with encrypted VLAN
		// attachments (interconnectAttachments).
		encrypted_interconnect_router?: bool
		id?:                            string

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter, and
		// all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// A reference to the network to which this router belongs.
		network?: string
		bgp?: matchN(1, [#bgp, list.MaxItems(1) & [...#bgp]])
		project?: string
		md5_authentication_keys?: matchN(1, [#md5_authentication_keys, list.MaxItems(1) & [...#md5_authentication_keys]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])

		// Region where the router resides.
		region?:    string
		self_link?: string
		timeouts?:  #timeouts
	})

	#bgp: close({
		// User-specified flag to indicate which mode to use for
		// advertisement. Default value: "DEFAULT" Possible values:
		// ["DEFAULT", "CUSTOM"]
		advertise_mode?: string

		// User-specified list of prefix groups to advertise in custom
		// mode.
		// This field can only be populated if advertiseMode is CUSTOM and
		// is advertised to all peers of the router. These groups will be
		// advertised in addition to any specified prefixes. Leave this
		// field
		// blank to advertise no custom groups.
		//
		// This enum field has the one valid value: ALL_SUBNETS
		advertised_groups?: [...string]

		// Local BGP Autonomous System Number (ASN). Must be an RFC6996
		// private ASN, either 16-bit or 32-bit. The value will be fixed
		// for
		// this router resource. All VPN tunnels that link to this router
		// will have the same local ASN.
		asn!: number

		// Explicitly specifies a range of valid BGP Identifiers for this
		// Router.
		// It is provided as a link-local IPv4 range (from
		// 169.254.0.0/16), of
		// size at least /30, even if the BGP sessions are over IPv6. It
		// must
		// not overlap with any IPv4 BGP session ranges. Other vendors
		// commonly
		// call this router ID.
		identifier_range?: string
		advertised_ip_ranges?: matchN(1, [_#defs."/$defs/bgp/$defs/advertised_ip_ranges", [..._#defs."/$defs/bgp/$defs/advertised_ip_ranges"]])

		// The interval in seconds between BGP keepalive messages that are
		// sent
		// to the peer. Hold time is three times the interval at which
		// keepalive
		// messages are sent, and the hold time is the maximum number of
		// seconds
		// allowed to elapse between successive keepalive messages that
		// BGP
		// receives from a peer.
		//
		// BGP will use the smaller of either the local hold time value or
		// the
		// peer's hold time value as the hold time for the BGP connection
		// between the two peers. If set, this value must be between 20
		// and 60.
		// The default is 20.
		keepalive_interval?: number
	})

	#md5_authentication_keys: close({
		// Value of the key used for MD5 authentication.
		key!: string

		// Name used to identify the key. Must be unique within a router.
		// Must be referenced by exactly one bgpPeer. Must comply with
		// RFC1035.
		name!: string
	})

	#params: close({
		// Resource manager tags to be bound to the router. Tag keys and
		// values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bgp/$defs/advertised_ip_ranges": close({
		// User-specified description for the IP range.
		description?: string

		// The IP range to advertise. The value must be a
		// CIDR-formatted string.
		range!: string
	})
}
