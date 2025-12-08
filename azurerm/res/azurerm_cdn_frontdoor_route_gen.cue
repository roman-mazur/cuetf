package res

import "list"

#azurerm_cdn_frontdoor_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_route")
	close({
		cdn_frontdoor_custom_domain_ids?: [...string]
		cdn_frontdoor_endpoint_id!:     string
		cdn_frontdoor_origin_group_id!: string
		cdn_frontdoor_origin_ids!: [...string]
		cdn_frontdoor_origin_path?: string
		cdn_frontdoor_rule_set_ids?: [...string]
		enabled?:             bool
		forwarding_protocol?: string
		cache?: matchN(1, [#cache, list.MaxItems(1) & [...#cache]])
		https_redirect_enabled?: bool
		id?:                     string
		link_to_default_domain?: bool
		timeouts?:               #timeouts
		name!:                   string
		patterns_to_match!: [...string]
		supported_protocols!: [...string]
	})

	#cache: close({
		compression_enabled?: bool
		content_types_to_compress?: [...string]
		query_string_caching_behavior?: string
		query_strings?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
