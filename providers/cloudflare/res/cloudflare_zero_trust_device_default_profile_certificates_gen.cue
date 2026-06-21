package res

#cloudflare_zero_trust_device_default_profile_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_default_profile_certificates")
	close({
		// The current status of the device policy certificate
		// provisioning feature for WARP clients.
		enabled!: bool
		zone_id!: string
	})
}
