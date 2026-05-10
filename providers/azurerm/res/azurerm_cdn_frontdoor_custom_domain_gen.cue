package res

import "list"

#azurerm_cdn_frontdoor_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_custom_domain")
	close({
		timeouts?: #timeouts
		tls!: matchN(1, [#tls, list.MaxItems(1) & [_, ...] & [...#tls]])
		cdn_frontdoor_profile_id!: string
		dns_zone_id?:              string
		expiration_date?:          string
		host_name!:                string
		id?:                       string
		name!:                     string
		validation_token?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#tls: close({
		cipher_suite?: matchN(1, [_#defs."/$defs/tls/$defs/cipher_suite", list.MaxItems(1) & [..._#defs."/$defs/tls/$defs/cipher_suite"]])
		cdn_frontdoor_secret_id?: string
		certificate_type?:        string
		minimum_version?:         string
	})

	_#defs: "/$defs/tls/$defs/cipher_suite": close({
		custom_ciphers?: matchN(1, [_#defs."/$defs/tls/$defs/cipher_suite/$defs/custom_ciphers", list.MaxItems(1) & [..._#defs."/$defs/tls/$defs/cipher_suite/$defs/custom_ciphers"]])
		type!: string
	})

	_#defs: "/$defs/tls/$defs/cipher_suite/$defs/custom_ciphers": close({
		tls12?: [...string]
		tls13?: [...string]
	})
}
