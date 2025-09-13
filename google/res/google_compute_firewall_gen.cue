package res

import "list"

#google_compute_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_firewall")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// If destination ranges are specified, the firewall will apply
		// only to
		// traffic that has destination IP address in these ranges. These
		// ranges
		// must be expressed in CIDR format. IPv4 or IPv6 ranges are
		// supported.
		destination_ranges?: [...string]

		// Direction of traffic to which this firewall applies; default is
		// INGRESS. Note: For INGRESS traffic, one of 'source_ranges',
		// 'source_tags' or 'source_service_accounts' is required.
		// Possible values: ["INGRESS", "EGRESS"]
		direction?: string

		// Denotes whether the firewall rule is disabled, i.e not applied
		// to the
		// network it is associated with. When set to true, the firewall
		// rule is
		// not enforced and the network behaves as if it did not exist. If
		// this
		// is unspecified, the firewall rule will be enabled.
		disabled?: bool

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string
		id?:   string

		// The name or self_link of the network to attach this firewall
		// to.
		network!: string

		// Priority for this rule. This is an integer between 0 and 65535,
		// both
		// inclusive. When not specified, the value assumed is 1000.
		// Relative
		// priorities determine precedence of conflicting rules. Lower
		// value of
		// priority implies higher precedence (eg, a rule with priority 0
		// has
		// higher precedence than a rule with priority 1). DENY rules take
		// precedence over ALLOW rules having equal priority.
		priority?: number

		// If source ranges are specified, the firewall will apply only to
		// traffic that has source IP address in these ranges. These
		// ranges must
		// be expressed in CIDR format. One or both of sourceRanges and
		// sourceTags may be set. If both properties are set, the firewall
		// will
		// apply to traffic that has source IP address within sourceRanges
		// OR the
		// source IP that belongs to a tag listed in the sourceTags
		// property. The
		// connection does not need to match both properties for the
		// firewall to
		// apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic,
		// one of
		// 'source_ranges', 'source_tags' or 'source_service_accounts' is
		// required.
		source_ranges?: [...string]
		project?: string
		allow?: matchN(1, [#allow, [...#allow]])
		deny?: matchN(1, [#deny, [...#deny]])
		self_link?: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])

		// If source service accounts are specified, the firewall will
		// apply only
		// to traffic originating from an instance with a service account
		// in this
		// list. Source service accounts cannot be used to control traffic
		// to an
		// instance's external IP address because service accounts are
		// associated
		// with an instance, not an IP address. sourceRanges can be set at
		// the
		// same time as sourceServiceAccounts. If both are set, the
		// firewall will
		// apply to traffic that has source IP address within sourceRanges
		// OR the
		// source IP belongs to an instance with service account listed in
		// sourceServiceAccount. The connection does not need to match
		// both
		// properties for the firewall to apply. sourceServiceAccounts
		// cannot be
		// used at the same time as sourceTags or targetTags. For INGRESS
		// traffic,
		// one of 'source_ranges', 'source_tags' or
		// 'source_service_accounts' is required.
		source_service_accounts?: [...string]

		// If source tags are specified, the firewall will apply only to
		// traffic
		// with source IP that belongs to a tag listed in source tags.
		// Source
		// tags cannot be used to control traffic to an instance's
		// external IP
		// address. Because tags are associated with an instance, not an
		// IP
		// address. One or both of sourceRanges and sourceTags may be set.
		// If
		// both properties are set, the firewall will apply to traffic
		// that has
		// source IP address within sourceRanges OR the source IP that
		// belongs to
		// a tag listed in the sourceTags property. The connection does
		// not need
		// to match both properties for the firewall to apply. For INGRESS
		// traffic,
		// one of 'source_ranges', 'source_tags' or
		// 'source_service_accounts' is required.
		source_tags?: [...string]
		timeouts?: #timeouts

		// A list of service accounts indicating sets of instances located
		// in the
		// network that may make network connections as specified in
		// allowed[].
		// targetServiceAccounts cannot be used at the same time as
		// targetTags or
		// sourceTags. If neither targetServiceAccounts nor targetTags are
		// specified, the firewall rule applies to all instances on the
		// specified
		// network.
		target_service_accounts?: [...string]

		// A list of instance tags indicating sets of instances located in
		// the
		// network that may make network connections as specified in
		// allowed[].
		// If no targetTags are specified, the firewall rule applies to
		// all
		// instances on the specified network.
		target_tags?: [...string]
	})

	#allow: close({
		// An optional list of ports to which this rule applies. This
		// field
		// is only applicable for UDP or TCP protocol. Each entry must be
		// either an integer or a range. If not specified, this rule
		// applies to connections through any port.
		//
		// Example inputs include: [22], [80, 443], and
		// ["12345-12349"].
		ports?: [...string]

		// The IP protocol to which this rule applies. The protocol type
		// is
		// required when creating a firewall rule. This value can either
		// be
		// one of the following well known protocol strings (tcp, udp,
		// icmp, esp, ah, sctp, ipip, all), or the IP protocol number.
		protocol!: string
	})

	#deny: close({
		// An optional list of ports to which this rule applies. This
		// field
		// is only applicable for UDP or TCP protocol. Each entry must be
		// either an integer or a range. If not specified, this rule
		// applies to connections through any port.
		//
		// Example inputs include: [22], [80, 443], and
		// ["12345-12349"].
		ports?: [...string]

		// The IP protocol to which this rule applies. The protocol type
		// is
		// required when creating a firewall rule. This value can either
		// be
		// one of the following well known protocol strings (tcp, udp,
		// icmp, esp, ah, sctp, ipip, all), or the IP protocol number.
		protocol!: string
	})

	#log_config: close({
		// This field denotes whether to include or exclude metadata for
		// firewall logs. Possible values: ["EXCLUDE_ALL_METADATA",
		// "INCLUDE_ALL_METADATA"]
		metadata!: string
	})

	#params: close({
		// Resource manager tags to be bound to the firewall. Tag keys and
		// values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456. The field is
		// ignored when empty.
		// The field is immutable and causes resource replacement when
		// mutated. This field is only
		// set at create time and modifying this field after creation will
		// trigger recreation.
		// To apply tags to an existing resource, see the
		// google_tags_tag_binding resource.
		resource_manager_tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
