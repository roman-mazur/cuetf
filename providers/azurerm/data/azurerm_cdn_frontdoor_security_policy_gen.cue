package data

#azurerm_cdn_frontdoor_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cdn_frontdoor_security_policy")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id?: string
		id?:                       string
		name!:                     string
		profile_name!:             string
		resource_group_name!:      string
		security_policies?: [...close({
			firewall?: [...close({
				association?: [...close({
					domain?: [...close({
						active?:                  bool
						cdn_frontdoor_domain_id?: string
					})]
					patterns_to_match?: [...string]
				})]
				cdn_frontdoor_firewall_policy_id?: string
			})]
		})]
	})

	#timeouts: close({
		read?: string
	})
}
