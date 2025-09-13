package res

import "list"

#google_network_services_tcp_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_services_tcp_route")
	close({
		// Time the TcpRoute was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Gateways defines a list of gateways this TcpRoute is attached
		// to, as one of the routing rules to route the requests served
		// by the gateway.
		// Each gateway reference should match the pattern:
		// projects/*/locations/global/gateways/<gateway_name>
		gateways?: [...string]
		id?: string

		// Set of label tags associated with the TcpRoute resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Meshes defines a list of meshes this TcpRoute is attached to,
		// as one of the routing rules to route the requests served by
		// the mesh.
		// Each mesh reference should match the pattern:
		// projects/*/locations/global/meshes/<mesh_name>
		// The attached Mesh should be of a type SIDECAR
		meshes?: [...string]

		// Name of the TcpRoute resource.
		name!: string
		rules?: matchN(1, [#rules, [_, ...] & [...#rules]])
		project?: string

		// Server-defined URL of this resource.
		self_link?: string
		timeouts?:  #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the TcpRoute was updated in UTC.
		update_time?: string
	})

	#rules: close({
		action?: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/action"]])
		matches?: matchN(1, [_#defs."/$defs/rules/$defs/matches", [..._#defs."/$defs/rules/$defs/matches"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		destinations?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/destinations", [..._#defs."/$defs/rules/$defs/action/$defs/destinations"]])

		// Specifies the idle timeout for the selected route. The idle
		// timeout is defined as the period in which there are no bytes
		// sent or received on either the upstream or downstream
		// connection. If not set, the default idle timeout is 30
		// seconds. If set to 0s, the timeout will be disabled.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		idle_timeout?: string

		// If true, Router will use the destination IP and port of the
		// original connection as the destination of the request.
		original_destination?: bool
	})

	_#defs: "/$defs/rules/$defs/action/$defs/destinations": close({
		// The URL of a BackendService to route traffic to.
		service_name?: string

		// Specifies the proportion of requests forwarded to the backend
		// referenced by the serviceName field. This is computed as:
		// weight/Sum(weights in this destination list). For non-zero
		// values, there may be some epsilon from the exact proportion
		// defined here depending on the precision an implementation
		// supports.
		// If only one serviceName is specified and it has a weight
		// greater than 0, 100% of the traffic is forwarded to that
		// backend.
		// If weights are specified for any one service name, they need to
		// be specified for all of them.
		// If weights are unspecified for all services, then, traffic is
		// distributed in equal proportions to all of them.
		weight?: number
	})

	_#defs: "/$defs/rules/$defs/matches": close({
		// Must be specified in the CIDR range format. A CIDR range
		// consists of an IP Address and a prefix length to construct the
		// subnet mask.
		// By default, the prefix length is 32 (i.e. matches a single IP
		// address). Only IPV4 addresses are supported. Examples:
		// "10.0.0.1" - matches against this exact IP address.
		// "10.0.0.0/8" - matches against any IP address within the
		// 10.0.0.0 subnet and 255.255.255.0 mask. "0.0.0.0/0" - matches
		// against any IP address'.
		address!: string

		// Specifies the destination port to match against.
		port!: string
	})
}
