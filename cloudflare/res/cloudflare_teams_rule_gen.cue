package res

import "list"

#cloudflare_teams_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_teams_rule")
	account_id:      string
	action:          string
	description:     string
	device_posture?: string
	enabled?:        bool
	filters?: [...string]
	id?:            string
	identity?:      string
	name:           string
	precedence:     number
	traffic?:       string
	version?:       number
	rule_settings?: #rule_settings | list.MaxItems(1) & [...#rule_settings]

	#rule_settings: {
		add_headers?: [string]: string
		allow_child_bypass?:                 bool
		block_page_enabled?:                 bool
		block_page_reason?:                  string
		bypass_parent_rule?:                 bool
		insecure_disable_dnssec_validation?: bool
		ip_categories?:                      bool
		override_host?:                      string
		override_ips?: [...string]
		audit_ssh?:           #rule_settings.#audit_ssh | list.MaxItems(1) & [...#rule_settings.#audit_ssh]
		biso_admin_controls?: #rule_settings.#biso_admin_controls | list.MaxItems(1) & [...#rule_settings.#biso_admin_controls]
		check_session?:       #rule_settings.#check_session | list.MaxItems(1) & [...#rule_settings.#check_session]
		egress?:              #rule_settings.#egress | list.MaxItems(1) & [...#rule_settings.#egress]
		l4override?:          #rule_settings.#l4override | list.MaxItems(1) & [...#rule_settings.#l4override]
		payload_log?:         #rule_settings.#payload_log | list.MaxItems(1) & [...#rule_settings.#payload_log]
		untrusted_cert?:      #rule_settings.#untrusted_cert | list.MaxItems(1) & [...#rule_settings.#untrusted_cert]

		#audit_ssh: command_logging: bool

		#biso_admin_controls: {
			disable_copy_paste?: bool
			disable_download?:   bool
			disable_keyboard?:   bool
			disable_printing?:   bool
			disable_upload?:     bool
		}

		#check_session: {
			duration: string
			enforce:  bool
		}

		#egress: {
			ipv4:           string
			ipv4_fallback?: string
			ipv6:           string
		}

		#l4override: {
			ip:   string
			port: number
		}

		#payload_log: enabled: bool

		#untrusted_cert: action?: string
	}
}
