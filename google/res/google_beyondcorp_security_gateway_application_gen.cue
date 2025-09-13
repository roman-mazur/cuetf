package res

import "list"

#google_beyondcorp_security_gateway_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_security_gateway_application")
	close({
		// User-settable Application resource ID.
		// * Must start with a letter.
		// * Must contain between 4-63 characters from '/a-z-/'.
		// * Must end with a number or letter.
		application_id!: string

		// Output only. Timestamp when the resource was created.
		create_time?: string

		// Optional. An arbitrary user-provided name for the Application
		// resource.
		// Cannot exceed 64 characters.
		display_name?: string
		id?:           string
		endpoint_matchers?: matchN(1, [#endpoint_matchers, [_, ...] & [...#endpoint_matchers]])

		// Identifier. Name of the resource.
		name?:     string
		timeouts?: #timeouts
		upstreams?: matchN(1, [#upstreams, [...#upstreams]])
		project?: string

		// ID of the Security Gateway resource this belongs to.
		security_gateway_id!: string

		// Output only. Timestamp when the resource was last modified.
		update_time?: string
	})

	#endpoint_matchers: close({
		// Required. Hostname of the application.
		hostname!: string

		// Optional. Ports of the application.
		ports?: [...number]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#upstreams: close({
		egress_policy?: matchN(1, [_#defs."/$defs/upstreams/$defs/egress_policy", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/egress_policy"]])
		network?: matchN(1, [_#defs."/$defs/upstreams/$defs/network", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/network"]])
	})

	_#defs: "/$defs/upstreams/$defs/egress_policy": close({
		// Required. List of regions where the application sends traffic
		// to.
		regions!: [...string]
	})

	_#defs: "/$defs/upstreams/$defs/network": close({
		// Required. Network name is of the format:
		// 'projects/{project}/global/networks/{network}'
		name!: string
	})
}
