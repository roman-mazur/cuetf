package res

#cloudflare_certificate_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_certificate_pack")
	close({
		certificate_authority!: string
		cloudflare_branding?:   bool
		hosts!: [...string]
		id?:                string
		status?:            string
		type!:              string
		validation_method!: string
		validity_days!:     number
		zone_id!:           string
	})
}
