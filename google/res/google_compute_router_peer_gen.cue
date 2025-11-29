package res

import "list"

#google_compute_router_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_router_peer")
	close({
		// User-specified flag to indicate which mode to use for
		// advertisement.
		// Valid values of this enum field are: 'DEFAULT', 'CUSTOM'
		// Default value: "DEFAULT" Possible values: ["DEFAULT",
		// "CUSTOM"]
		advertise_mode?: string

		// User-specified list of prefix groups to advertise in custom
		// mode, which currently supports the following option:
		//
		// * 'ALL_SUBNETS': Advertises all of the router's own VPC
		// subnets.
		// This excludes any routes learned for subnets that use VPC
		// Network
		// Peering.
		//
		//
		// Note that this field can only be populated if advertiseMode is
		// 'CUSTOM'
		// and overrides the list defined for the router (in the "bgp"
		// message).
		// These groups are advertised in addition to any specified
		// prefixes.
		// Leave this field blank to advertise no custom groups.
		advertised_groups?: [...string]

		// The priority of routes advertised to this BGP peer.
		// Where there is more than one matching route of maximum
		// length, the routes with the lowest priority value win.
		advertised_route_priority?: number

		// The user-defined custom learned route priority for a BGP
		// session.
		// This value is applied to all custom learned route ranges for
		// the session. You can choose a value
		// from 0 to 65335. If you don't provide a value, Google Cloud
		// assigns a priority of 100 to the ranges.
		custom_learned_route_priority?: number

		// The status of the BGP peer connection. If set to false, any
		// active session
		// with the peer is terminated and all associated routing
		// information is removed.
		// If set to true, the peer connection can be established with
		// routing information.
		// The default is true.
		enable?: bool

		// Enable IPv4 traffic over BGP Peer. It is enabled by default if
		// the peerIpAddress is version 4.
		enable_ipv4?: bool

		// Enable IPv6 traffic over BGP Peer. If not specified, it is
		// disabled by default.
		enable_ipv6?: bool

		// routers.list of export policies applied to this peer, in the
		// order they must be evaluated.
		// The name must correspond to an existing policy that has
		// ROUTE_POLICY_TYPE_EXPORT type.
		export_policies?: [...string]

		// routers.list of import policies applied to this peer, in the
		// order they must be evaluated.
		// The name must correspond to an existing policy that has
		// ROUTE_POLICY_TYPE_IMPORT type.
		import_policies?: [...string]

		// Name of the interface the BGP peer is associated with.
		interface!: string
		id?:        string

		// IP address of the interface inside Google Cloud Platform.
		// Only IPv4 is supported.
		ip_address?: string

		// IPv4 address of the interface inside Google Cloud Platform.
		ipv4_nexthop_address?: string

		// IPv6 address of the interface inside Google Cloud Platform.
		// The address must be in the range 2600:2d00:0:2::/64 or
		// 2600:2d00:0:3::/64.
		// If you do not specify the next hop addresses, Google Cloud
		// automatically
		// assigns unused addresses from the 2600:2d00:0:2::/64 or
		// 2600:2d00:0:3::/64 range for you.
		ipv6_nexthop_address?: string

		// An internal boolean field for provider use for
		// zero_advertised_route_priority.
		is_advertised_route_priority_set?: bool

		// An internal boolean field for provider use.
		is_custom_learned_priority_set?: bool
		advertised_ip_ranges?: matchN(1, [#advertised_ip_ranges, [...#advertised_ip_ranges]])
		bfd?: matchN(1, [#bfd, list.MaxItems(1) & [...#bfd]])
		custom_learned_ip_ranges?: matchN(1, [#custom_learned_ip_ranges, [...#custom_learned_ip_ranges]])
		md5_authentication_key?: matchN(1, [#md5_authentication_key, list.MaxItems(1) & [...#md5_authentication_key]])
		timeouts?: #timeouts

		// The resource that configures and manages this BGP peer.
		//
		// * 'MANAGED_BY_USER' is the default value and can be managed by
		// you or other users
		// * 'MANAGED_BY_ATTACHMENT' is a BGP peer that is configured and
		// managed by Cloud Interconnect, specifically by an
		// InterconnectAttachment of type PARTNER. Google automatically
		// creates, updates, and deletes this type of BGP peer when the
		// PARTNER InterconnectAttachment is created, updated,
		// or deleted.
		management_type?: string

		// Name of this BGP peer. The name must be 1-63 characters long,
		// and comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means the first character must be a lowercase letter, and all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// Peer BGP Autonomous System Number (ASN).
		// Each BGP interface may use a different value.
		peer_asn!: number

		// IP address of the BGP interface outside Google Cloud Platform.
		// Only IPv4 is supported. Required if 'ip_address' is set.
		peer_ip_address?: string

		// IPv4 address of the BGP interface outside Google Cloud
		// Platform.
		peer_ipv4_nexthop_address?: string

		// IPv6 address of the BGP interface outside Google Cloud
		// Platform.
		// The address must be in the range 2600:2d00:0:2::/64 or
		// 2600:2d00:0:3::/64.
		// If you do not specify the next hop addresses, Google Cloud
		// automatically
		// assigns unused addresses from the 2600:2d00:0:2::/64 or
		// 2600:2d00:0:3::/64 range for you.
		peer_ipv6_nexthop_address?: string
		project?:                   string

		// Region where the router and BgpPeer reside.
		// If it is not provided, the provider region is used.
		region?: string

		// The name of the Cloud Router in which this BgpPeer will be
		// configured.
		router!: string

		// The URI of the VM instance that is used as third-party router
		// appliances
		// such as Next Gen Firewalls, Virtual Routers, or Router
		// Appliances.
		// The VM instance must be located in zones contained in the same
		// region as
		// this Cloud Router. The VM instance is the peer side of the BGP
		// session.
		router_appliance_instance?: string

		// Force the advertised_route_priority to be 0.
		zero_advertised_route_priority?: bool

		// Force the custom_learned_route_priority to be 0.
		zero_custom_learned_route_priority?: bool
	})

	#advertised_ip_ranges: close({
		// User-specified description for the IP range.
		description?: string

		// The IP range to advertise. The value must be a
		// CIDR-formatted string.
		range!: string
	})

	#bfd: close({
		// The minimum interval, in milliseconds, between BFD control
		// packets
		// received from the peer router. The actual value is negotiated
		// between the two routers and is equal to the greater of this
		// value
		// and the transmit interval of the other router. If set, this
		// value
		// must be between 1000 and 30000.
		min_receive_interval?: number

		// The minimum interval, in milliseconds, between BFD control
		// packets
		// transmitted to the peer router. The actual value is negotiated
		// between the two routers and is equal to the greater of this
		// value
		// and the corresponding receive interval of the other router. If
		// set,
		// this value must be between 1000 and 30000.
		min_transmit_interval?: number

		// The number of consecutive BFD packets that must be missed
		// before
		// BFD declares that a peer is unavailable. If set, the value must
		// be a value between 5 and 16.
		multiplier?: number

		// The BFD session initialization mode for this BGP peer.
		// If set to 'ACTIVE', the Cloud Router will initiate the BFD
		// session
		// for this BGP peer. If set to 'PASSIVE', the Cloud Router will
		// wait
		// for the peer router to initiate the BFD session for this BGP
		// peer.
		// If set to 'DISABLED', BFD is disabled for this BGP peer.
		// Possible values: ["ACTIVE", "DISABLED", "PASSIVE"]
		session_initialization_mode!: string
	})

	#custom_learned_ip_ranges: close({
		// The IP range to learn. The value must be a
		// CIDR-formatted string.
		range!: string
	})

	#md5_authentication_key: close({
		// Value of the key.
		key!: string

		// [REQUIRED] Name used to identify the key.
		// Must be unique within a router. Must be referenced by exactly
		// one bgpPeer. Must comply with RFC1035.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
