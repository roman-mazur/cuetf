package data

#cloudflare_zero_trust_device_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_settings")
	close({
		account_id!:                            string
		disable_for_time?:                      number
		gateway_proxy_enabled?:                 bool
		gateway_udp_proxy_enabled?:             bool
		root_certificate_installation_enabled?: bool
		use_zt_virtual_ip?:                     bool
	})
}
