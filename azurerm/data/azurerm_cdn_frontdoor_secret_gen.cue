package data

#azurerm_cdn_frontdoor_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_secret")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id?: string
		id?:                       string
		name!:                     string
		profile_name!:             string
		resource_group_name!:      string
		secret?: [...close({
			customer_certificate?: [...close({
				expiration_date?:          string
				key_vault_certificate_id?: string
				subject_alternative_names?: [...string]
			})]
		})]
	})

	#timeouts: close({
		read?: string
	})
}
