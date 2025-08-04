package res

#cloudflare_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone")
	close({
		activated_on?:     string
		cname_suffix?:     string
		created_on?:       string
		development_mode?: number
		id?:               string
		account!: close({
			id?: string
		})
		meta?: close({
			cdn_only?:                 bool
			custom_certificate_quota?: number
			dns_only?:                 bool
			foundation_dns?:           bool
			page_rule_quota?:          number
			phishing_detected?:        bool
			step?:                     number
		})
		modified_on?: string
		name!:        string
		owner?: close({
			id?:   string
			name?: string
			type?: string
		})
		name_servers?: [...string]
		tenant?: close({
			id?:   string
			name?: string
		})
		original_dnshost?: string
		original_name_servers?: [...string]
		original_registrar?: string
		paused?:             bool
		status?:             string
		tenant_unit?: close({
			id?: string
		})
		type?: string
		vanity_name_servers?: [...string]
		verification_key?: string
	})
}
