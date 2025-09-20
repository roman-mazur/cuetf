package res

import "list"

#azurerm_cdn_frontdoor_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_secret")
	close({
		secret?: matchN(1, [#secret, list.MaxItems(1) & [_, ...] & [...#secret]])
		cdn_frontdoor_profile_id!:   string
		cdn_frontdoor_profile_name?: string
		id?:                         string
		name!:                       string
		timeouts?:                   #timeouts
	})

	#secret: close({
		customer_certificate?: matchN(1, [_#defs."/$defs/secret/$defs/customer_certificate", [_, ...] & [..._#defs."/$defs/secret/$defs/customer_certificate"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/secret/$defs/customer_certificate": close({
		key_vault_certificate_id!: string
		subject_alternative_names?: [...string]
	})
}
