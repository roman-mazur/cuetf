package data

#cloudflare_magic_network_monitoring_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_network_monitoring_rules")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			automatic_advertisement?: bool
			bandwidth_threshold?:     number
			duration?:                string
			id?:                      string
			name?:                    string
			packet_threshold?:        number
			prefix_match?:            string
			prefixes?: [...string]
			type?:               string
			zscore_sensitivity?: string
			zscore_target?:      string
		}), [...close({
			automatic_advertisement?: bool
			bandwidth_threshold?:     number
			duration?:                string
			id?:                      string
			name?:                    string
			packet_threshold?:        number
			prefix_match?:            string
			prefixes?: [...string]
			type?:               string
			zscore_sensitivity?: string
			zscore_target?:      string
		})]])
	})
}
