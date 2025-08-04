package data

#cloudflare_zero_trust_access_short_lived_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_short_lived_certificates")
	close({
		account_id?: string
		max_items?:  number
		result?: matchN(1, [close({
			aud?:        string
			id?:         string
			public_key?: string
		}), [...close({
			aud?:        string
			id?:         string
			public_key?: string
		})]])
		zone_id?: string
	})
}
