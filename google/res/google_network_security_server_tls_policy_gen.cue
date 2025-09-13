package res

import "list"

#google_network_security_server_tls_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_server_tls_policy")
	close({
		// This field applies only for Traffic Director policies. It is
		// must be set to false for external HTTPS load balancer
		// policies.
		// Determines if server allows plaintext connections. If set to
		// true, server allows plain text connections. By default, it is
		// set to false. This setting is not exclusive of other
		// encryption modes. For example, if allowOpen and mtlsPolicy are
		// set, server allows both plain text and mTLS connections. See
		// documentation of other encryption modes to confirm
		// compatibility.
		// Consider using it if you wish to upgrade in place your
		// deployment to TLS while having mixed TLS and non-TLS traffic
		// reaching port :80.
		allow_open?: bool

		// Time the ServerTlsPolicy was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Set of label tags associated with the ServerTlsPolicy resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the server tls policy.
		// The default value is 'global'.
		location?: string

		// Name of the ServerTlsPolicy resource.
		name!: string
		mtls_policy?: matchN(1, [#mtls_policy, list.MaxItems(1) & [...#mtls_policy]])
		server_certificate?: matchN(1, [#server_certificate, list.MaxItems(1) & [...#server_certificate]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Time the ServerTlsPolicy was updated in UTC.
		update_time?: string
	})

	#mtls_policy: close({
		client_validation_ca?: matchN(1, [_#defs."/$defs/mtls_policy/$defs/client_validation_ca", [..._#defs."/$defs/mtls_policy/$defs/client_validation_ca"]])

		// When the client presents an invalid certificate or no
		// certificate to the load balancer, the clientValidationMode
		// specifies how the client connection is handled.
		// Required if the policy is to be used with the external HTTPS
		// load balancing. For Traffic Director it must be empty.
		// Possible values: ["CLIENT_VALIDATION_MODE_UNSPECIFIED",
		// "ALLOW_INVALID_OR_MISSING_CLIENT_CERT", "REJECT_INVALID"]
		client_validation_mode?: string

		// Reference to the TrustConfig from
		// certificatemanager.googleapis.com namespace.
		// If specified, the chain validation will be performed against
		// certificates configured in the given TrustConfig.
		// Allowed only if the policy is to be used with external HTTPS
		// load balancers.
		client_validation_trust_config?: string
	})

	#server_certificate: close({
		certificate_provider_instance?: matchN(1, [_#defs."/$defs/server_certificate/$defs/certificate_provider_instance", list.MaxItems(1) & [..._#defs."/$defs/server_certificate/$defs/certificate_provider_instance"]])
		grpc_endpoint?: matchN(1, [_#defs."/$defs/server_certificate/$defs/grpc_endpoint", list.MaxItems(1) & [..._#defs."/$defs/server_certificate/$defs/grpc_endpoint"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/mtls_policy/$defs/client_validation_ca": close({
		certificate_provider_instance?: matchN(1, [_#defs."/$defs/mtls_policy/$defs/client_validation_ca/$defs/certificate_provider_instance", list.MaxItems(1) & [..._#defs."/$defs/mtls_policy/$defs/client_validation_ca/$defs/certificate_provider_instance"]])
		grpc_endpoint?: matchN(1, [_#defs."/$defs/mtls_policy/$defs/client_validation_ca/$defs/grpc_endpoint", list.MaxItems(1) & [..._#defs."/$defs/mtls_policy/$defs/client_validation_ca/$defs/grpc_endpoint"]])
	})

	_#defs: "/$defs/mtls_policy/$defs/client_validation_ca/$defs/certificate_provider_instance": close({
		// Plugin instance name, used to locate and load
		// CertificateProvider instance configuration. Set to
		// "google_cloud_private_spiffe" to use Certificate Authority
		// Service certificate provider instance.
		plugin_instance!: string
	})

	_#defs: "/$defs/mtls_policy/$defs/client_validation_ca/$defs/grpc_endpoint": close({
		// The target URI of the gRPC endpoint. Only UDS path is
		// supported, and should start with "unix:".
		target_uri!: string
	})

	_#defs: "/$defs/server_certificate/$defs/certificate_provider_instance": close({
		// Plugin instance name, used to locate and load
		// CertificateProvider instance configuration. Set to
		// "google_cloud_private_spiffe" to use Certificate Authority
		// Service certificate provider instance.
		plugin_instance!: string
	})

	_#defs: "/$defs/server_certificate/$defs/grpc_endpoint": close({
		// The target URI of the gRPC endpoint. Only UDS path is
		// supported, and should start with "unix:".
		target_uri!: string
	})
}
