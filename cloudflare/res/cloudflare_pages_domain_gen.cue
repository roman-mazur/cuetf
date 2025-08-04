package res

#cloudflare_pages_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_pages_domain")
	close({
		account_id!:            string
		certificate_authority?: string
		validation_data?: close({
			error_message?: string
			method?:        string
			status?:        string
			txt_name?:      string
			txt_value?:     string
		})
		verification_data?: close({
			error_message?: string
			status?:        string
		})
		created_on?:   string
		domain_id?:    string
		id?:           string
		name!:         string
		project_name!: string
		status?:       string
		zone_tag?:     string
	})
}
