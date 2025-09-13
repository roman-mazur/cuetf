package res

import "list"

#google_compute_firewall_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_firewall_policy_rule")
	close({
		// The Action to perform when the client connection triggers the
		// rule. Valid actions are "allow", "deny", "goto_next" and
		// "apply_security_profile_group".
		action!: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description for this resource.
		description?: string

		// The direction in which this rule applies. Possible values:
		// ["INGRESS", "EGRESS"]
		direction!: string

		// Denotes whether the firewall policy rule is disabled.
		// When set to true, the firewall policy rule is not enforced and
		// traffic behaves as if it did not exist.
		// If this is unspecified, the firewall policy rule will be
		// enabled.
		disabled?: bool

		// Denotes whether to enable logging for a particular rule.
		// If logging is enabled, logs will be exported to the configured
		// export destination in Stackdriver.
		// Logs may be exported to BigQuery or Pub/Sub.
		// Note: you cannot enable logging on "goto_next" rules.
		enable_logging?: bool

		// The firewall policy of the resource.
		firewall_policy!: string

		// Type of the resource. Always 'compute#firewallPolicyRule' for
		// firewall policy rules
		kind?: string
		id?:   string

		// An integer indicating the priority of a rule in the list.
		// The priority must be a positive value between 0 and 2147483647.
		// Rules are evaluated from highest to lowest priority where 0 is
		// the highest priority and 2147483647 is the lowest prority.
		priority!: number
		match?: matchN(1, [#match, list.MaxItems(1) & [_, ...] & [...#match]])
		target_secure_tags?: matchN(1, [#target_secure_tags, [...#target_secure_tags]])
		timeouts?: #timeouts

		// Calculation of the complexity of a single firewall policy rule.
		rule_tuple_count?: number

		// A fully-qualified URL of a SecurityProfile resource instance.
		// Example:
		// https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
		// Must be specified if action = 'apply_security_profile_group'
		// and cannot be specified for other actions.
		security_profile_group?: string

		// A list of network resource URLs to which this rule applies.
		// This field allows you to control which network's VMs get this
		// rule.
		// If this field is left blank, all VMs within the organization
		// will receive the rule.
		target_resources?: [...string]

		// A list of service accounts indicating the sets of instances
		// that are applied with this rule.
		target_service_accounts?: [...string]

		// Boolean flag indicating if the traffic should be TLS decrypted.
		// Can be set only if action = 'apply_security_profile_group' and
		// cannot be set for other actions.
		tls_inspect?: bool
	})

	#match: close({
		// Address groups which should be matched against the traffic
		// destination. Maximum number of destination address groups is
		// 10.
		dest_address_groups?: [...string]

		// Fully Qualified Domain Name (FQDN) which should be matched
		// against traffic destination. Maximum number of destination
		// fqdn allowed is 100.
		dest_fqdns?: [...string]

		// CIDR IP address range. Maximum number of destination CIDR IP
		// ranges allowed is 5000.
		dest_ip_ranges?: [...string]

		// Region codes whose IP addresses will be used to match for
		// destination of traffic. Should be specified as 2 letter
		// country code defined as per ISO 3166 alpha-2 country codes.
		// ex."US" Maximum number of dest region codes allowed is 5000.
		dest_region_codes?: [...string]

		// Names of Network Threat Intelligence lists. The IPs in these
		// lists will be matched against traffic destination.
		dest_threat_intelligences?: [...string]

		// Address groups which should be matched against the traffic
		// source. Maximum number of source address groups is 10.
		src_address_groups?: [...string]

		// Fully Qualified Domain Name (FQDN) which should be matched
		// against traffic source. Maximum number of source fqdn allowed
		// is 100.
		src_fqdns?: [...string]
		layer4_configs?: matchN(1, [_#defs."/$defs/match/$defs/layer4_configs", [_, ...] & [..._#defs."/$defs/match/$defs/layer4_configs"]])
		src_secure_tags?: matchN(1, [_#defs."/$defs/match/$defs/src_secure_tags", [..._#defs."/$defs/match/$defs/src_secure_tags"]])

		// CIDR IP address range. Maximum number of source CIDR IP ranges
		// allowed is 5000.
		src_ip_ranges?: [...string]

		// Region codes whose IP addresses will be used to match for
		// source of traffic. Should be specified as 2 letter country
		// code defined as per ISO 3166 alpha-2 country codes. ex."US"
		// Maximum number of source region codes allowed is 5000.
		src_region_codes?: [...string]

		// Names of Network Threat Intelligence lists. The IPs in these
		// lists will be matched against traffic source.
		src_threat_intelligences?: [...string]
	})

	#target_secure_tags: close({
		// Name of the secure tag, created with TagManager's TagValue API.
		name?: string

		// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A
		// secure tag is INEFFECTIVE when it is deleted or its network is
		// deleted.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/match/$defs/layer4_configs": close({
		// The IP protocol to which this rule applies. The protocol type
		// is required when creating a firewall rule.
		// This value can either be one of the following well known
		// protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the
		// IP protocol number.
		ip_protocol!: string

		// An optional list of ports to which this rule applies. This
		// field is only applicable for UDP or TCP protocol. Each entry
		// must be either an integer or a range. If not specified, this
		// rule applies to connections through any port.
		// Example inputs include: ["22"], ["80","443"], and
		// ["12345-12349"].
		ports?: [...string]
	})

	_#defs: "/$defs/match/$defs/src_secure_tags": close({
		// Name of the secure tag, created with TagManager's TagValue API.
		name?: string

		// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A
		// secure tag is INEFFECTIVE when it is deleted or its network is
		// deleted.
		state?: string
	})
}
