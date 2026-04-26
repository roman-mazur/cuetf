package res

#cloudflare_zero_trust_device_ip_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_ip_profile")
	close({
		account_id?: string

		// The RFC3339Nano timestamp when the Device IP profile was
		// created.
		created_at?: string

		// An optional description of the Device IP profile.
		description?: string

		// Whether the Device IP profile will be applied to matching
		// devices.
		enabled?: bool

		// The ID of the Device IP profile.
		id?: string

		// The wirefilter expression to match registrations. Available
		// values: "identity.name", "identity.email",
		// "identity.groups.id", "identity.groups.name",
		// "identity.groups.email", "identity.saml_attributes".
		match!: string

		// A user-friendly name for the Device IP profile.
		name!: string

		// The precedence of the Device IP profile. Lower values indicate
		// higher precedence. Device IP profile will be evaluated in
		// ascending order of this field.
		precedence!: number

		// The ID of the Subnet.
		subnet_id!: string

		// The RFC3339Nano timestamp when the Device IP profile was last
		// updated.
		updated_at?: string
	})
}
