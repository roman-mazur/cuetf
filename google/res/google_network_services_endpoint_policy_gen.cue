package res

import "list"

#google_network_services_endpoint_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_services_endpoint_policy")
	close({
		// This field specifies the URL of AuthorizationPolicy resource
		// that applies authorization policies to the inbound traffic at
		// the matched endpoints.
		authorization_policy?: string

		// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy
		// can be set to specify the authentication for traffic from the
		// proxy to the actual endpoints.
		client_tls_policy?: string

		// Time the TcpRoute was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of label tags associated with the TcpRoute resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the EndpointPolicy resource.
		name!: string

		// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is
		// used to determine the authentication policy to be applied to
		// terminate the inbound traffic at the identified backends.
		server_tls_policy?: string
		endpoint_matcher?: matchN(1, [#endpoint_matcher, list.MaxItems(1) & [_, ...] & [...#endpoint_matcher]])
		project?:  string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		traffic_port_selector?: matchN(1, [#traffic_port_selector, list.MaxItems(1) & [...#traffic_port_selector]])

		// The type of endpoint policy. This is primarily used to validate
		// the configuration. Possible values: ["SIDECAR_PROXY",
		// "GRPC_SERVER"]
		type!: string

		// Time the TcpRoute was updated in UTC.
		update_time?: string
	})

	#endpoint_matcher: close({
		metadata_label_matcher?: matchN(1, [_#defs."/$defs/endpoint_matcher/$defs/metadata_label_matcher", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/endpoint_matcher/$defs/metadata_label_matcher"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#traffic_port_selector: close({
		// List of ports. Can be port numbers or port range (example,
		// [80-90] specifies all ports from 80 to 90, including 80 and
		// 90) or named ports or * to specify all ports. If the list is
		// empty, all ports are selected.
		ports!: [...string]
	})

	_#defs: "/$defs/endpoint_matcher/$defs/metadata_label_matcher": close({
		metadata_labels?: matchN(1, [_#defs."/$defs/endpoint_matcher/$defs/metadata_label_matcher/$defs/metadata_labels", [..._#defs."/$defs/endpoint_matcher/$defs/metadata_label_matcher/$defs/metadata_labels"]])

		// Specifies how matching should be done. Possible values:
		// ["MATCH_ANY", "MATCH_ALL"]
		metadata_label_match_criteria!: string
	})

	_#defs: "/$defs/endpoint_matcher/$defs/metadata_label_matcher/$defs/metadata_labels": close({
		// Required. Label name presented as key in xDS Node Metadata.
		label_name!: string

		// Required. Label value presented as value corresponding to the
		// above key, in xDS Node Metadata.
		label_value!: string
	})
}
