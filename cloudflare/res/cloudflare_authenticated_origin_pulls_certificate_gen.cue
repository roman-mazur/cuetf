package res

#cloudflare_authenticated_origin_pulls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls_certificate")
	close({
		certificate!:    string
		certificate_id?: string
		enabled?:        bool
		expires_on?:     string
		id?:             string
		issuer?:         string
		private_key!:    string
		signature?:      string
		status?:         string
		uploaded_on?:    string
		zone_id!:        string
	})
}
