package data

#azurerm_cdn_frontdoor_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_custom_domain")
	close({
		cdn_frontdoor_profile_id?: string
		dns_zone_id?:              string
		expiration_date?:          string
		host_name?:                string
		id?:                       string
		name!:                     string
		profile_name!:             string
		timeouts?:                 #timeouts
		resource_group_name!:      string
		tls?: [...close({
			cdn_frontdoor_secret_id?: string
			certificate_type?:        string
			minimum_tls_version?:     string
		})]
		validation_token?: string
	})

	#timeouts: close({
		read?: string
	})
}
