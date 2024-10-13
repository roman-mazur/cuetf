package res

#cloudflare_zero_trust_device_posture_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_device_posture_rule")
	account_id!:  string
	description?: string
	expiration?:  string
	id?:          string
	name?:        string
	schedule?:    string
	type!:        string
	input?: #input | [...#input]
	match?: #match | [...#match]

	#input: {
		active_threats?: number
		certificate_id?: string
		check_disks?: [...string]
		check_private_key?: bool
		cn?:                string
		compliance_status?: string
		connection_id?:     string
		count_operator?:    string
		domain?:            string
		eid_last_seen?:     string
		enabled?:           bool
		exists?:            bool
		extended_key_usage?: [...string]
		id?:                 string
		infected?:           bool
		is_active?:          bool
		issue_count?:        string
		last_seen?:          string
		network_status?:     string
		operator?:           string
		os?:                 string
		os_distro_name?:     string
		os_distro_revision?: string
		os_version_extra?:   string
		overall?:            string
		path?:               string
		require_all?:        bool
		risk_level?:         string
		running?:            bool
		score?:              number
		sensor_config?:      string
		sha256?:             string
		state?:              string
		thumbprint?:         string
		total_score?:        number
		version?:            string
		version_operator?:   string
		locations?: #input.#locations | [...#input.#locations]

		#locations: {
			paths?: [...string]
			trust_stores?: [...string]
		}
	}

	#match: platform?: string
}
