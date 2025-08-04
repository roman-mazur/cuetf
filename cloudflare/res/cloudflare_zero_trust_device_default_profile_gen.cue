package res

#cloudflare_zero_trust_device_default_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_default_profile")
	close({
		account_id!:        string
		allow_mode_switch?: bool
		allow_updates?:     bool
		allowed_to_leave?:  bool
		auto_connect?:      number
		exclude?: matchN(1, [close({
			address?:     string
			description?: string
			host?:        string
		}), [...close({
			address?:     string
			description?: string
			host?:        string
		})]])
		captive_portal?:        number
		default?:               bool
		disable_auto_fallback?: bool
		enabled?:               bool
		fallback_domains?: matchN(1, [close({
			description?: string
			dns_server?: [...string]
			suffix?: string
		}), [...close({
			description?: string
			dns_server?: [...string]
			suffix?: string
		})]])
		exclude_office_ips?: bool
		gateway_unique_id?:  string
		include?: matchN(1, [close({
			address?:     string
			description?: string
			host?:        string
		}), [...close({
			address?:     string
			description?: string
			host?:        string
		})]])
		id?:                string
		lan_allow_minutes?: number
		service_mode_v2?: close({
			mode?: string
			port?: number
		})
		lan_allow_subnet_size?:          number
		register_interface_ip_with_dns?: bool
		sccm_vpn_boundary_support?:      bool
		support_url?:                    string
		switch_locked?:                  bool
		tunnel_protocol?:                string
	})
}
