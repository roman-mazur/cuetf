package res

#cloudflare_device_policy_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_device_policy_certificates")
	enabled!: bool
	id?:      string
	zone_id!: string
}
