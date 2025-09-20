package data

#azurerm_cdn_frontdoor_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_profile")
	close({
		timeouts?: #timeouts
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		log_scrubbing_rule?: [...close({
			match_variable?: string
		})]
		name!:                     string
		resource_group_name!:      string
		resource_guid?:            string
		response_timeout_seconds?: number
		sku_name?:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
