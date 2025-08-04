package res

#cloudflare_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_rule")
	close({
		account_id?: string
		allowed_modes?: [...string]
		configuration!: close({
			target?: string
			value?:  string
		})
		created_on?:  string
		id?:          string
		mode!:        string
		modified_on?: string
		notes?:       string
		scope?: close({
			email?: string
			id?:    string
			type?:  string
		})
		zone_id?: string
	})
}
