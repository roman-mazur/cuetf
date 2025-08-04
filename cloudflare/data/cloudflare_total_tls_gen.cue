package data

#cloudflare_total_tls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_total_tls")
	close({
		certificate_authority?: string
		enabled?:               bool
		validity_period?:       number
		zone_id!:               string
	})
}
