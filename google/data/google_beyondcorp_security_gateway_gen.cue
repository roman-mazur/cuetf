package data

#google_beyondcorp_security_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_security_gateway")
	close({
		// Output only. Timestamp when the resource was created.
		create_time?: string

		// Service account used for operations that involve resources in
		// consumer projects.
		delegating_service_account?: string

		// Optional. An arbitrary user-provided name for the
		// SecurityGateway.
		// Cannot exceed 64 characters.
		display_name?: string

		// Output only. IP addresses that will be used for establishing
		// connection to the endpoints.
		external_ips?: [...string]

		// Optional. Map of Hubs that represents regional data path
		// deployment with GCP region
		// as a key.
		hubs?: [...close({
			internet_gateway?: [...close({
				assigned_ips?: [...string]
			})]
			region?: string
		})]
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122. Must be omitted or set to
		// 'global'.
		location?: string

		// Identifier. Name of the resource.
		name?:    string
		project?: string

		// Optional. User-settable SecurityGateway resource ID.
		// * Must start with a letter.
		// * Must contain between 4-63 characters from '/a-z-/'.
		// * Must end with a number or letter.
		security_gateway_id!: string

		// Output only. The operational state of the SecurityGateway.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// UPDATING
		// DELETING
		// RUNNING
		// DOWN
		// ERROR
		state?: string

		// Output only. Timestamp when the resource was last modified.
		update_time?: string
	})
}
