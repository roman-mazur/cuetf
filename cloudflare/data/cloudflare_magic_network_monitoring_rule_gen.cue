package data

#cloudflare_magic_network_monitoring_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_network_monitoring_rule")
	close({
		// Toggle on if you would like Cloudflare to automatically
		// advertise the IP Prefixes within the rule via Magic Transit
		// when the rule is triggered. Only available for users of Magic
		// Transit.
		automatic_advertisement?: bool
		account_id!:              string

		// The number of bits per second for the rule. When this value is
		// exceeded for the set duration, an alert notification is sent.
		// Minimum of 1 and no maximum.
		bandwidth_threshold?: number

		// The amount of time that the rule threshold must be exceeded to
		// send an alert notification. The final value must be equivalent
		// to one of the following 8 values
		// ["1m","5m","10m","15m","20m","30m","45m","60m"].
		// Available values: "1m", "5m", "10m", "15m", "20m", "30m",
		// "45m", "60m".
		duration?: string

		// The id of the rule. Must be unique.
		id?: string

		// The name of the rule. Must be unique. Supports characters A-Z,
		// a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~).
		// You can’t have a space in the rule name. Max 256 characters.
		name?: string

		// The number of packets per second for the rule. When this value
		// is exceeded for the set duration, an alert notification is
		// sent. Minimum of 1 and no maximum.
		packet_threshold?: number

		// Prefix match type to be applied for a prefix auto advertisement
		// when using an advanced_ddos rule.
		// Available values: "exact", "subnet", "supernet".
		prefix_match?: string
		prefixes?: [...string]

		// The id of the rule. Must be unique.
		rule_id?: string

		// MNM rule type.
		// Available values: "threshold", "zscore", "advanced_ddos".
		type?: string

		// Level of sensitivity set for zscore rules.
		// Available values: "low", "medium", "high".
		zscore_sensitivity?: string

		// Target of the zscore rule analysis.
		// Available values: "bits", "packets".
		zscore_target?: string
	})
}
