package res

import "list"

#azurerm_cdn_frontdoor_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_custom_domain")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id!: string
		dns_zone_id?:              string
		expiration_date?:          string
		host_name!:                string
		id?:                       string
		name!:                     string
		validation_token?:         string
		tls?: matchN(1, [#tls, list.MaxItems(1) & [_, ...] & [...#tls]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#tls: close({
		cdn_frontdoor_secret_id?: string
		certificate_type?:        string
	})
}
