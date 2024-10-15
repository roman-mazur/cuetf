package res

#cloudflare_zero_trust_device_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_certificates")
	enabled!: bool
	id?:      string
	zone_id!: string
}
