package res

#cloudflare_custom_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_custom_hostname")
	custom_metadata?: [string]: string
	custom_origin_server?: string
	custom_origin_sni?:    string
	hostname!:             string
	id?:                   string
	ownership_verification?: [string]: string
	ownership_verification_http?: [string]: string
	status?:                          string
	wait_for_ssl_pending_validation?: bool
	zone_id!:                         string
	ssl?: #ssl | [...#ssl]

	#ssl: {
		bundle_method?:         string
		certificate_authority?: string
		custom_certificate?:    string
		custom_key?:            string
		method?:                string
		status?:                string
		type?:                  string
		validation_errors?: [...{
			message?: string
		}]
		validation_records?: [...{
			cname_name?:   string
			cname_target?: string
			emails?: [...string]
			http_body?: string
			http_url?:  string
			txt_name?:  string
			txt_value?: string
		}]
		wildcard?: bool
		settings?: #ssl.#settings | [...#ssl.#settings]

		#settings: {
			ciphers?: [...string]
			early_hints?:     string
			http2?:           string
			min_tls_version?: string
			tls13?:           string
		}
	}
}
