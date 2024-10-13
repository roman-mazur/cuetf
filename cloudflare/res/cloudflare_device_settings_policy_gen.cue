package res

#cloudflare_device_settings_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_device_settings_policy")
	account_id!:            string
	allow_mode_switch?:     bool
	allow_updates?:         bool
	allowed_to_leave?:      bool
	auto_connect?:          number
	captive_portal?:        number
	default?:               bool
	description!:           string
	disable_auto_fallback?: bool
	enabled?:               bool
	exclude_office_ips?:    bool
	id?:                    string
	match?:                 string
	name!:                  string
	precedence?:            number
	service_mode_v2_mode?:  string
	service_mode_v2_port?:  number
	support_url?:           string
	switch_locked?:         bool
	tunnel_protocol?:       string
}
