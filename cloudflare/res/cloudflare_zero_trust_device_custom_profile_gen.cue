package res

#cloudflare_zero_trust_device_custom_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_custom_profile")
	close({
		account_id!: string
		exclude?: matchN(1, [close({
			address?:     string
			description?: string
			host?:        string
		}), [...close({
			address?:     string
			description?: string
			host?:        string
		})]])
		allow_mode_switch?: bool
		fallback_domains?: matchN(1, [close({
			description?: string
			dns_server?: [...string]
			suffix?: string
		}), [...close({
			description?: string
			dns_server?: [...string]
			suffix?: string
		})]])
		allow_updates?:    bool
		allowed_to_leave?: bool
		include?: matchN(1, [close({
			address?:     string
			description?: string
			host?:        string
		}), [...close({
			address?:     string
			description?: string
			host?:        string
		})]])
		auto_connect?:          number
		captive_portal?:        number
		default?:               bool
		description?:           string
		disable_auto_fallback?: bool
		enabled?:               bool
		exclude_office_ips?:    bool
		gateway_unique_id?:     string
		id?:                    string
		lan_allow_minutes?:     number
		lan_allow_subnet_size?: number
		match!:                 string
		service_mode_v2?: close({
			mode?: string
			port?: number
		})
		name!: string
		target_tests?: matchN(1, [close({
			id?:   string
			name?: string
		}), [...close({
			id?:   string
			name?: string
		})]])
		policy_id?:                      string
		precedence!:                     number
		register_interface_ip_with_dns?: bool
		sccm_vpn_boundary_support?:      bool
		support_url?:                    string
		switch_locked?:                  bool
		tunnel_protocol?:                string
	})
}
