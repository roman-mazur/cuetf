package res

import "list"

#azurerm_cdn_frontdoor_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_security_policy")
	close({
		security_policies!: matchN(1, [#security_policies, list.MaxItems(1) & [_, ...] & [...#security_policies]])
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id!: string
		id?:                       string
		name!:                     string
	})

	#security_policies: close({
		firewall!: matchN(1, [_#defs."/$defs/security_policies/$defs/firewall", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/security_policies/$defs/firewall"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/security_policies/$defs/firewall": close({
		association!: matchN(1, [_#defs."/$defs/security_policies/$defs/firewall/$defs/association", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/security_policies/$defs/firewall/$defs/association"]])
		cdn_frontdoor_firewall_policy_id!: string
	})

	_#defs: "/$defs/security_policies/$defs/firewall/$defs/association": close({
		domain!: matchN(1, [_#defs."/$defs/security_policies/$defs/firewall/$defs/association/$defs/domain", list.MaxItems(500) & [_, ...] & [..._#defs."/$defs/security_policies/$defs/firewall/$defs/association/$defs/domain"]])
		patterns_to_match!: [...string]
	})

	_#defs: "/$defs/security_policies/$defs/firewall/$defs/association/$defs/domain": close({
		active?:                  bool
		cdn_frontdoor_domain_id!: string
	})
}
