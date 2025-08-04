package data

#cloudflare_zero_trust_device_default_profile_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_default_profile_certificates")
	close({
		enabled?: bool
		zone_id!: string
	})
}
