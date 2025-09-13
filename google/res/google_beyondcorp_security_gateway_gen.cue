package res

import "list"

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
		id?: string

		// Identifier. Name of the resource.
		name?: string

		// Optional. User-settable SecurityGateway resource ID.
		// * Must start with a letter.
		// * Must contain between 4-63 characters from '/a-z-/'.
		// * Must end with a number or letter.
		security_gateway_id!: string
		project?:             string
		hubs?: matchN(1, [#hubs, [...#hubs]])
		timeouts?: #timeouts

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

	#hubs: close({
		internet_gateway?: matchN(1, [_#defs."/$defs/hubs/$defs/internet_gateway", list.MaxItems(1) & [..._#defs."/$defs/hubs/$defs/internet_gateway"]])
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/hubs/$defs/internet_gateway": close({
		// Output only. List of IP addresses assigned to the Cloud NAT.
		assigned_ips?: [...string]
	})
}
