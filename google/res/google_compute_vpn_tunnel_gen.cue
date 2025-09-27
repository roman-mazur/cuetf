package res

import "list"

#google_compute_vpn_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_vpn_tunnel")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Detailed status message for the VPN tunnel.
		detailed_status?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// IKE protocol version to use when establishing the VPN tunnel
		// with
		// peer VPN gateway.
		// Acceptable IKE versions are 1 or 2. Default version is 2.
		ike_version?: number

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels to apply to this VpnTunnel.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Local traffic selector to use when establishing the VPN tunnel
		// with
		// peer VPN gateway. The value should be a CIDR formatted string,
		// for example '192.168.0.0/16'. The ranges should be disjoint.
		// Only IPv4 is supported.
		local_traffic_selector?: [...string]

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character
		// must be a lowercase letter, and all following characters must
		// be a dash, lowercase letter, or digit,
		// except the last character, which cannot be a dash.
		name!: string

		// URL of the peer side external VPN gateway to which this VPN
		// tunnel is connected.
		peer_external_gateway?: string

		// The interface ID of the external VPN gateway to which this VPN
		// tunnel is connected.
		peer_external_gateway_interface?: number

		// URL of the peer side HA GCP VPN gateway to which this VPN
		// tunnel is connected.
		// If provided, the VPN tunnel will automatically use the same
		// vpn_gateway_interface
		// ID in the peer GCP VPN gateway.
		// This field must reference a 'google_compute_ha_vpn_gateway'
		// resource.
		peer_gcp_gateway?: string

		// IP address of the peer VPN gateway. Only IPv4 is supported.
		peer_ip?: string

		// The region where the tunnel is located. If unset, is set to the
		// region of 'target_vpn_gateway'.
		region?:  string
		project?: string
		cipher_suite?: matchN(1, [#cipher_suite, list.MaxItems(1) & [...#cipher_suite]])
		timeouts?: #timeouts

		// Remote traffic selector to use when establishing the VPN tunnel
		// with
		// peer VPN gateway. The value should be a CIDR formatted string,
		// for example '192.168.0.0/16'. The ranges should be disjoint.
		// Only IPv4 is supported.
		remote_traffic_selector?: [...string]

		// URL of router resource to be used for dynamic routing.
		router?: string

		// Shared secret used to set the secure session between the Cloud
		// VPN
		// gateway and the peer VPN gateway.
		shared_secret!: string
		self_link?:     string

		// Hash of the shared secret.
		shared_secret_hash?: string

		// URL of the Target VPN gateway with which this VPN tunnel is
		// associated.
		target_vpn_gateway?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		tunnel_id?: string

		// URL of the VPN gateway with which this VPN tunnel is
		// associated.
		// This must be used if a High Availability VPN gateway resource
		// is created.
		// This field must reference a 'google_compute_ha_vpn_gateway'
		// resource.
		vpn_gateway?: string

		// The interface ID of the VPN gateway with which this VPN tunnel
		// is associated.
		vpn_gateway_interface?: number
	})

	#cipher_suite: close({
		phase1?: matchN(1, [_#defs."/$defs/cipher_suite/$defs/phase1", list.MaxItems(1) & [..._#defs."/$defs/cipher_suite/$defs/phase1"]])
		phase2?: matchN(1, [_#defs."/$defs/cipher_suite/$defs/phase2", list.MaxItems(1) & [..._#defs."/$defs/cipher_suite/$defs/phase2"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cipher_suite/$defs/phase1": close({
		// Diffie-Hellman groups.
		dh?: [...string]

		// Encryption algorithms.
		encryption?: [...string]

		// Integrity algorithms.
		integrity?: [...string]

		// Pseudo-random functions.
		prf?: [...string]
	})

	_#defs: "/$defs/cipher_suite/$defs/phase2": close({
		// Encryption algorithms.
		encryption?: [...string]

		// Integrity algorithms.
		integrity?: [...string]

		// Perfect forward secrecy groups.
		pfs?: [...string]
	})
}
