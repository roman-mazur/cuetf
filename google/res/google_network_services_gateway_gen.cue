package res

#google_network_services_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_gateway")
	close({
		// Zero or one IPv4 or IPv6 address on which the Gateway will
		// receive the traffic.
		// When no address is provided, an IP from the subnetwork is
		// allocated.
		//
		// This field only applies to gateways of type
		// 'SECURE_WEB_GATEWAY'.
		// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and ::
		// for IPv6.
		addresses?: [...string]

		// A fully-qualified Certificates URL reference. The proxy
		// presents a Certificate (selected based on SNI) when
		// establishing a TLS connection.
		// This feature only applies to gateways of type
		// 'SECURE_WEB_GATEWAY'.
		certificate_urls?: [...string]

		// The timestamp when the resource was created.
		create_time?: string

		// When deleting a gateway of type 'SECURE_WEB_GATEWAY', this
		// boolean option will also delete auto generated router by the
		// gateway creation.
		// If there is no other gateway of type 'SECURE_WEB_GATEWAY'
		// remaining for that region and network it will be deleted.
		delete_swg_autogen_router_on_destroy?: bool

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Determines if envoy will insert internal debug headers into
		// upstream requests.
		// Other Envoy headers may still be injected.
		// By default, envoy will not insert any debug headers. Possible
		// values: ["NONE", "DEBUG_HEADERS"]
		envoy_headers?: string

		// A fully-qualified GatewaySecurityPolicy URL reference. Defines
		// how a server should apply security policy to inbound (VM to
		// Proxy) initiated connections.
		// For example:
		// 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
		// This policy is specific to gateways of type
		// 'SECURE_WEB_GATEWAY'.
		gateway_security_policy?: string

		// The IP Version that will be used by this gateway. Possible
		// values: ["IPV4", "IPV6"]
		ip_version?: string

		// Set of label tags associated with the Gateway resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the gateway.
		// The default value is 'global'.
		location?: string

		// Name of the Gateway resource.
		name!: string

		// The relative resource name identifying the VPC network that is
		// using this configuration.
		// For example: 'projects/*/global/networks/network-1'.
		//
		// Currently, this field is specific to gateways of type
		// 'SECURE_WEB_GATEWAY'.
		network?:  string
		timeouts?: #timeouts

		// One or more port numbers (1-65535), on which the Gateway will
		// receive traffic.
		// The proxy binds to the specified ports. Gateways of type
		// 'SECURE_WEB_GATEWAY' are limited to 1 port.
		// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and ::
		// for IPv6 and support multiple ports.
		ports!: [...number]
		project?: string

		// The routing mode of the Gateway. This field is configurable
		// only for gateways of type SECURE_WEB_GATEWAY. This field is
		// required for gateways of type SECURE_WEB_GATEWAY. Possible
		// values: ["NEXT_HOP_ROUTING_MODE", "EXPLICIT_ROUTING_MODE"]
		routing_mode?: string

		// Immutable. Scope determines how configuration across multiple
		// Gateway instances are merged.
		// The configuration for multiple Gateway instances with the same
		// scope will be merged as presented as a single coniguration to
		// the proxy/load balancer.
		//
		// Max length 64 characters. Scope should start with a letter and
		// can only have letters, numbers, hyphens.
		scope?: string

		// Server-defined URL of this resource.
		self_link?: string

		// A fully-qualified ServerTLSPolicy URL reference. Specifies how
		// TLS traffic is terminated. If empty, TLS termination is
		// disabled.
		server_tls_policy?: string

		// The relative resource name identifying the subnetwork in which
		// this SWG is allocated.
		// For example:
		// projects/*/regions/us-central1/subnetworks/network-1.
		//
		// Currently, this field is specific to gateways of type
		// 'SECURE_WEB_GATEWAY'.
		subnetwork?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Immutable. The type of the customer managed gateway. Possible
		// values: ["OPEN_MESH", "SECURE_WEB_GATEWAY"]
		type!: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
