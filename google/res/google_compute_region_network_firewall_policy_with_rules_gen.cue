package res

import "list"

#google_compute_region_network_firewall_policy_with_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_network_firewall_policy_with_rules")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Fingerprint of the resource. This field is used internally
		// during updates of this resource.
		fingerprint?: string
		id?:          string

		// User-provided name of the Network firewall policy.
		// The name should be unique in the project in which the firewall
		// policy is created.
		// The name must be 1-63 characters long, and comply with RFC1035.
		// Specifically,
		// the name must be 1-63 characters long and match the regular
		// expression [a-z]([-a-z0-9]*[a-z0-9])?
		// which means the first character must be a lowercase letter, and
		// all following characters must be a dash,
		// lowercase letter, or digit, except the last character, which
		// cannot be a dash.
		name!: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		network_firewall_policy_id?: string

		// Policy type is used to determine which resources (networks) the
		// policy can be associated with.
		// A policy can be associated with a network only if the network
		// has the matching policyType in its network profile.
		// Different policy types may support some of the Firewall Rules
		// features. Possible values: ["VPC_POLICY", "RDMA_ROCE_POLICY"]
		policy_type?: string

		// A list of firewall policy pre-defined rules.
		predefined_rules?: [...close({
			action?:         string
			description?:    string
			direction?:      string
			disabled?:       bool
			enable_logging?: bool
			match?: [...close({
				dest_address_groups?: [...string]
				dest_fqdns?: [...string]
				dest_ip_ranges?: [...string]
				dest_region_codes?: [...string]
				dest_threat_intelligences?: [...string]
				layer4_config?: [...close({
					ip_protocol?: string
					ports?: [...string]
				})]
				src_address_groups?: [...string]
				src_fqdns?: [...string]
				src_ip_ranges?: [...string]
				src_region_codes?: [...string]
				src_secure_tag?: [...close({
					name?:  string
					state?: string
				})]
				src_threat_intelligences?: [...string]
			})]
			priority?:               number
			rule_name?:              string
			security_profile_group?: string
			target_secure_tag?: [...close({
				name?:  string
				state?: string
			})]
			target_service_accounts?: [...string]
			tls_inspect?: bool
		})]
		project?: string
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		timeouts?: #timeouts

		// The region of this resource.
		region?: string

		// Total count of all firewall policy rule tuples. A firewall
		// policy can not exceed a set number of tuples.
		rule_tuple_count?: number

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_id?: string
	})

	#rule: close({
		// The Action to perform when the client connection triggers the
		// rule. Can currently be either
		// "allow", "deny", "apply_security_profile_group" or "goto_next".
		action!: string

		// A description of the rule.
		description?: string

		// The direction in which this rule applies. If unspecified an
		// INGRESS rule is created. Possible values: ["INGRESS",
		// "EGRESS"]
		direction?: string

		// Denotes whether the firewall policy rule is disabled. When set
		// to true,
		// the firewall policy rule is not enforced and traffic behaves as
		// if it did
		// not exist. If this is unspecified, the firewall policy rule
		// will be
		// enabled.
		disabled?: bool

		// Denotes whether to enable logging for a particular rule.
		// If logging is enabled, logs will be exported to the
		// configured export destination in Stackdriver.
		enable_logging?: bool

		// An integer indicating the priority of a rule in the list. The
		// priority must be a value
		// between 0 and 2147483647. Rules are evaluated from highest to
		// lowest priority where 0 is the
		// highest priority and 2147483647 is the lowest priority.
		priority!: number

		// An optional name for the rule. This field is not a unique
		// identifier
		// and can be updated.
		rule_name?: string
		match!: matchN(1, [_#defs."/$defs/rule/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/match"]])
		target_secure_tag?: matchN(1, [_#defs."/$defs/rule/$defs/target_secure_tag", [..._#defs."/$defs/rule/$defs/target_secure_tag"]])

		// A fully-qualified URL of a SecurityProfile resource instance.
		// Example:
		// https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
		// Must be specified if action is 'apply_security_profile_group'.
		security_profile_group?: string

		// A list of service accounts indicating the sets of
		// instances that are applied with this rule.
		target_service_accounts?: [...string]

		// Boolean flag indicating if the traffic should be TLS decrypted.
		// It can be set only if action = 'apply_security_profile_group'
		// and cannot be set for other actions.
		tls_inspect?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/match": close({
		// Address groups which should be matched against the traffic
		// destination.
		// Maximum number of destination address groups is 10.
		dest_address_groups?: [...string]

		// Fully Qualified Domain Name (FQDN) which should be matched
		// against
		// traffic destination. Maximum number of destination fqdn allowed
		// is 100.
		dest_fqdns?: [...string]

		// Destination IP address range in CIDR format. Required for
		// EGRESS rules.
		dest_ip_ranges?: [...string]

		// Region codes whose IP addresses will be used to match for
		// destination
		// of traffic. Should be specified as 2 letter country code
		// defined as per
		// ISO 3166 alpha-2 country codes. ex."US"
		// Maximum number of destination region codes allowed is 5000.
		dest_region_codes?: [...string]

		// Names of Network Threat Intelligence lists.
		// The IPs in these lists will be matched against traffic
		// destination.
		dest_threat_intelligences?: [...string]

		// Address groups which should be matched against the traffic
		// source.
		// Maximum number of source address groups is 10.
		src_address_groups?: [...string]

		// Fully Qualified Domain Name (FQDN) which should be matched
		// against
		// traffic source. Maximum number of source fqdn allowed is 100.
		src_fqdns?: [...string]
		layer4_config!: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/layer4_config", [_, ...] & [..._#defs."/$defs/rule/$defs/match/$defs/layer4_config"]])
		src_secure_tag?: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/src_secure_tag", [..._#defs."/$defs/rule/$defs/match/$defs/src_secure_tag"]])

		// Source IP address range in CIDR format. Required for
		// INGRESS rules.
		src_ip_ranges?: [...string]

		// Region codes whose IP addresses will be used to match for
		// source
		// of traffic. Should be specified as 2 letter country code
		// defined as per
		// ISO 3166 alpha-2 country codes. ex."US"
		// Maximum number of source region codes allowed is 5000.
		src_region_codes?: [...string]

		// Names of Network Threat Intelligence lists.
		// The IPs in these lists will be matched against traffic source.
		src_threat_intelligences?: [...string]
	})

	_#defs: "/$defs/rule/$defs/match/$defs/layer4_config": close({
		// The IP protocol to which this rule applies. The protocol
		// type is required when creating a firewall rule.
		// This value can either be one of the following well
		// known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp),
		// or the IP protocol number.
		ip_protocol!: string

		// An optional list of ports to which this rule applies. This
		// field
		// is only applicable for UDP or TCP protocol. Each entry must be
		// either an integer or a range. If not specified, this rule
		// applies to connections through any port.
		// Example inputs include: ["22"], ["80","443"], and
		// ["12345-12349"].
		ports?: [...string]
	})

	_#defs: "/$defs/rule/$defs/match/$defs/src_secure_tag": close({
		// Name of the secure tag, created with TagManager's TagValue API.
		// @pattern tagValues/[0-9]+
		name?: string

		// [Output Only] State of the secure tag, either 'EFFECTIVE' or
		// 'INEFFECTIVE'. A secure tag is 'INEFFECTIVE' when it is deleted
		// or its network is deleted.
		state?: string
	})

	_#defs: "/$defs/rule/$defs/target_secure_tag": close({
		// Name of the secure tag, created with TagManager's TagValue API.
		// @pattern tagValues/[0-9]+
		name?: string

		// [Output Only] State of the secure tag, either 'EFFECTIVE' or
		// 'INEFFECTIVE'. A secure tag is 'INEFFECTIVE' when it is deleted
		// or its network is deleted.
		state?: string
	})
}
