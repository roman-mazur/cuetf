package res

#cloudflare_account_dns_settings_internal_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_dns_settings_internal_view")
	close({
		account_id!:    string
		created_time?:  string
		id?:            string
		modified_time?: string
		name!:          string
		zones!: [...string]
	})
}
