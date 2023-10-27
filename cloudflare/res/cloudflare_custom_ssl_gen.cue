package res

import "list"

#cloudflare_custom_ssl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_custom_ssl")
	expires_on?: string
	hosts?: [...string]
	id?:                  string
	issuer?:              string
	modified_on?:         string
	priority?:            number
	signature?:           string
	status?:              string
	uploaded_on?:         string
	zone_id:              string
	custom_ssl_options?:  #custom_ssl_options | list.MaxItems(1) & [...#custom_ssl_options]
	custom_ssl_priority?: #custom_ssl_priority | [...#custom_ssl_priority]

	#custom_ssl_options: {
		bundle_method?:    string
		certificate?:      string
		geo_restrictions?: string
		private_key?:      string
		type?:             string
	}

	#custom_ssl_priority: {
		id?:       string
		priority?: number
	}
}
