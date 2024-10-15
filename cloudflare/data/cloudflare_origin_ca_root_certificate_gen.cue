package data

#cloudflare_origin_ca_root_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_origin_ca_root_certificate")
	algorithm!: string
	cert_pem?:  string
	id?:        string
}
