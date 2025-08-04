package data

#cloudflare_authenticated_origin_pulls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls")
	close({
		cert_id?:          string
		cert_status?:      string
		cert_updated_at?:  string
		cert_uploaded_on?: string
		certificate?:      string
		created_at?:       string
		enabled?:          bool
		expires_on?:       string
		hostname!:         string
		issuer?:           string
		serial_number?:    string
		signature?:        string
		status?:           string
		updated_at?:       string
		zone_id!:          string
	})
}
