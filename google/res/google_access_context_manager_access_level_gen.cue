package res

import "list"

#google_access_context_manager_access_level: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_context_manager_access_level")
	close({
		// Description of the AccessLevel and its use. Does not affect
		// behavior.
		description?: string

		// Resource name for the Access Level. The short_name component
		// must begin
		// with a letter and only include alphanumeric and '_'.
		// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
		name!: string
		id?:   string

		// The AccessPolicy this AccessLevel lives in.
		// Format: accessPolicies/{policy_id}
		parent!: string
		basic?: matchN(1, [#basic, list.MaxItems(1) & [...#basic]])
		custom?: matchN(1, [#custom, list.MaxItems(1) & [...#custom]])

		// Human readable title. Must be unique within the Policy.
		title!:    string
		timeouts?: #timeouts
	})

	#basic: close({
		conditions!: matchN(1, [_#defs."/$defs/basic/$defs/conditions", [_, ...] & [..._#defs."/$defs/basic/$defs/conditions"]])

		// How the conditions list should be combined to determine if a
		// request
		// is granted this AccessLevel. If AND is used, each Condition in
		// conditions must be satisfied for the AccessLevel to be applied.
		// If
		// OR is used, at least one Condition in conditions must be
		// satisfied
		// for the AccessLevel to be applied. Default value: "AND"
		// Possible values: ["AND", "OR"]
		combining_function?: string
	})

	#custom: close({
		expr!: matchN(1, [_#defs."/$defs/custom/$defs/expr", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/custom/$defs/expr"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/basic/$defs/conditions": close({
		// A list of CIDR block IP subnetwork specification. May be IPv4
		// or IPv6.
		// Note that for a CIDR IP address block, the specified IP address
		// portion must be properly truncated (i.e. all the host bits must
		// be zero) or the input is considered malformed. For example,
		// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not.
		// Similarly,
		// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
		// is not. The originating IP of a request must be in one of the
		// listed subnets in order for this Condition to be true.
		// If empty, all IP addresses are allowed.
		ip_subnetworks?: [...string]

		// An allowed list of members (users, service accounts).
		// Using groups is not supported yet.
		//
		// The signed-in user originating the request must be a part of
		// one
		// of the provided members. If not specified, a request may come
		// from any user (logged in/not logged in, not present in any
		// groups, etc.).
		// Formats: 'user:{emailid}', 'serviceAccount:{emailid}'
		members?: [...string]

		// Whether to negate the Condition. If true, the Condition becomes
		// a NAND over its non-empty fields, each field must be false for
		// the Condition overall to be satisfied. Defaults to false.
		negate?: bool

		// The request must originate from one of the provided
		// countries/regions.
		// Format: A valid ISO 3166-1 alpha-2 code.
		regions?: [...string]
		device_policy?: matchN(1, [_#defs."/$defs/basic/$defs/conditions/$defs/device_policy", list.MaxItems(1) & [..._#defs."/$defs/basic/$defs/conditions/$defs/device_policy"]])
		vpc_network_sources?: matchN(1, [_#defs."/$defs/basic/$defs/conditions/$defs/vpc_network_sources", [..._#defs."/$defs/basic/$defs/conditions/$defs/vpc_network_sources"]])

		// A list of other access levels defined in the same Policy,
		// referenced by resource name. Referencing an AccessLevel which
		// does not exist is an error. All access levels listed must be
		// granted for the Condition to be true.
		// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
		required_access_levels?: [...string]
	})

	_#defs: "/$defs/basic/$defs/conditions/$defs/device_policy": close({
		// A list of allowed device management levels.
		// An empty list allows all management levels. Possible values:
		// ["MANAGEMENT_UNSPECIFIED", "NONE", "BASIC", "COMPLETE"]
		allowed_device_management_levels?: [...string]

		// A list of allowed encryptions statuses.
		// An empty list allows all statuses. Possible values:
		// ["ENCRYPTION_UNSPECIFIED", "ENCRYPTION_UNSUPPORTED",
		// "UNENCRYPTED", "ENCRYPTED"]
		allowed_encryption_statuses?: [...string]

		// Whether the device needs to be approved by the customer admin.
		require_admin_approval?: bool

		// Whether the device needs to be corp owned.
		require_corp_owned?: bool
		os_constraints?: matchN(1, [_#defs."/$defs/basic/$defs/conditions/$defs/device_policy/$defs/os_constraints", [..._#defs."/$defs/basic/$defs/conditions/$defs/device_policy/$defs/os_constraints"]])

		// Whether or not screenlock is required for the DevicePolicy
		// to be true. Defaults to false.
		require_screen_lock?: bool
	})

	_#defs: "/$defs/basic/$defs/conditions/$defs/device_policy/$defs/os_constraints": close({
		// The minimum allowed OS version. If not set, any version
		// of this OS satisfies the constraint.
		// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
		minimum_version?: string

		// The operating system type of the device. Possible values:
		// ["OS_UNSPECIFIED", "DESKTOP_MAC", "DESKTOP_WINDOWS",
		// "DESKTOP_LINUX", "DESKTOP_CHROME_OS", "ANDROID", "IOS"]
		os_type!: string

		// If you specify DESKTOP_CHROME_OS for osType, you can optionally
		// include requireVerifiedChromeOs to require Chrome Verified
		// Access.
		require_verified_chrome_os?: bool
	})

	_#defs: "/$defs/basic/$defs/conditions/$defs/vpc_network_sources": close({
		vpc_subnetwork?: matchN(1, [_#defs."/$defs/basic/$defs/conditions/$defs/vpc_network_sources/$defs/vpc_subnetwork", list.MaxItems(1) & [..._#defs."/$defs/basic/$defs/conditions/$defs/vpc_network_sources/$defs/vpc_subnetwork"]])
	})

	_#defs: "/$defs/basic/$defs/conditions/$defs/vpc_network_sources/$defs/vpc_subnetwork": close({
		// Required. Network name to be allowed by this Access Level.
		// Networks of foreign organizations requires
		// 'compute.network.get' permission to be granted to caller.
		network!: string

		// A list of CIDR block IP subnetwork specification. Must be IPv4.
		vpc_ip_subnetworks?: [...string]
	})

	_#defs: "/$defs/custom/$defs/expr": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})
}
