package res

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
		hostname?:         string
		id?:               string
		issuer?:           string
		private_key?:      string
		serial_number?:    string
		signature?:        string
		status?:           string
		config!: matchN(1, [close({
			cert_id?:  string
			enabled?:  bool
			hostname?: string
		}), [...close({
			cert_id?:  string
			enabled?:  bool
			hostname?: string
		})]])
		updated_at?: string
		zone_id!:    string
	})
}
