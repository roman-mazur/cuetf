package res

import "list"

#azurerm_cdn_frontdoor_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_profile")
	close({
		id?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                     string
		resource_group_name!:      string
		resource_guid?:            string
		response_timeout_seconds?: number
		sku_name!:                 string
		tags?: [string]: string
		log_scrubbing_rule?: matchN(1, [#log_scrubbing_rule, list.MaxItems(3) & [...#log_scrubbing_rule]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#log_scrubbing_rule: close({
		match_variable!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
