package res

import "list"

#google_network_services_tls_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_tls_route")
	close({
		// Time the TlsRoute was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// Gateways defines a list of gateways this TlsRoute is attached
		// to, as one of the routing rules to route the requests served
		// by the gateway.
		// Each gateway reference should match the pattern:
		// projects/*/locations/global/gateways/<gateway_name>
		gateways?: [...string]
		id?: string

		// Meshes defines a list of meshes this TlsRoute is attached to,
		// as one of the routing rules to route the requests served by
		// the mesh.
		// Each mesh reference should match the pattern:
		// projects/*/locations/global/meshes/<mesh_name>
		// The attached Mesh should be of a type SIDECAR
		meshes?: [...string]

		// Name of the TlsRoute resource.
		name!:    string
		project?: string
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])
		timeouts?: #timeouts

		// Server-defined URL of this resource.
		self_link?: string

		// Time the TlsRoute was updated in UTC.
		update_time?: string
	})

	#rules: close({
		action!: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/action"]])
		matches!: matchN(1, [_#defs."/$defs/rules/$defs/matches", [_, ...] & [..._#defs."/$defs/rules/$defs/matches"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		destinations?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/destinations", [..._#defs."/$defs/rules/$defs/action/$defs/destinations"]])
	})

	_#defs: "/$defs/rules/$defs/action/$defs/destinations": close({
		// The URL of a BackendService to route traffic to.
		service_name?: string

		// Specifies the proportion of requests forwarded to the backend
		// referenced by the serviceName field.
		weight?: number
	})

	_#defs: "/$defs/rules/$defs/matches": close({
		// ALPN (Application-Layer Protocol Negotiation) to match against.
		// Examples: "http/1.1", "h2". At least one of sniHost and alpn
		// is required. Up to 5 alpns across all matches can be set.
		alpn?: [...string]

		// SNI (server name indicator) to match against. SNI will be
		// matched against all wildcard domains, i.e. www.example.com
		// will be first matched against www.example.com, then
		// *.example.com, then *.com.
		// Partial wildcards are not supported, and values like
		// *w.example.com are invalid. At least one of sniHost and alpn
		// is required. Up to 5 sni hosts across all matches can be set.
		sni_host?: [...string]
	})
}
