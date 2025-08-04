package data

#cloudflare_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user")
	close({
		organizations?: matchN(1, [close({
			id?:   string
			name?: string
			permissions?: [...string]
			roles?: [...string]
			status?: string
		}), [...close({
			id?:   string
			name?: string
			permissions?: [...string]
			roles?: [...string]
			status?: string
		})]])
		betas?: [...string]
		country?:                           string
		first_name?:                        string
		has_business_zones?:                bool
		has_enterprise_zones?:              bool
		has_pro_zones?:                     bool
		id?:                                string
		last_name?:                         string
		suspended?:                         bool
		telephone?:                         string
		two_factor_authentication_enabled?: bool
		two_factor_authentication_locked?:  bool
		zipcode?:                           string
	})
}
