package data

#cloudflare_magic_network_monitoring_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_network_monitoring_rule")
	close({
		account_id!:              string
		automatic_advertisement?: bool
		bandwidth_threshold?:     number
		duration?:                string
		id?:                      string
		name?:                    string
		packet_threshold?:        number
		prefix_match?:            string
		prefixes?: [...string]
		rule_id?:            string
		type?:               string
		zscore_sensitivity?: string
		zscore_target?:      string
	})
}
