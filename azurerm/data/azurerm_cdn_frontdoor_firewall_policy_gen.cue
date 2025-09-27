package data

#azurerm_cdn_frontdoor_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_firewall_policy")
	close({
		captcha_cookie_expiration_in_minutes?: number
		enabled?:                              bool
		frontend_endpoint_ids?: [...string]
		id?:                                        string
		js_challenge_cookie_expiration_in_minutes?: number
		mode?:                                      string
		name!:                                      string
		timeouts?:                                  #timeouts
		redirect_url?:                              string
		resource_group_name!:                       string
		sku_name?:                                  string
	})

	#timeouts: close({
		read?: string
	})
}
