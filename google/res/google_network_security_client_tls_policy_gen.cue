package res

import "list"

#google_network_security_client_tls_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_client_tls_policy")
	close({
		// Time the ClientTlsPolicy was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Set of label tags associated with the ClientTlsPolicy resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the client tls policy.
		// The default value is 'global'.
		location?: string
		id?:       string

		// Name of the ClientTlsPolicy resource.
		name!: string

		// Server Name Indication string to present to the server during
		// TLS handshake. E.g: "secure.example.com".
		sni?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		client_certificate?: matchN(1, [#client_certificate, list.MaxItems(1) & [...#client_certificate]])
		server_validation_ca?: matchN(1, [#server_validation_ca, [...#server_validation_ca]])
		timeouts?: #timeouts
		project?:  string

		// Time the ClientTlsPolicy was updated in UTC.
		update_time?: string
	})

	#client_certificate: close({
		certificate_provider_instance?: matchN(1, [_#defs."/$defs/client_certificate/$defs/certificate_provider_instance", list.MaxItems(1) & [..._#defs."/$defs/client_certificate/$defs/certificate_provider_instance"]])
		grpc_endpoint?: matchN(1, [_#defs."/$defs/client_certificate/$defs/grpc_endpoint", list.MaxItems(1) & [..._#defs."/$defs/client_certificate/$defs/grpc_endpoint"]])
	})

	#server_validation_ca: close({
		certificate_provider_instance?: matchN(1, [_#defs."/$defs/server_validation_ca/$defs/certificate_provider_instance", list.MaxItems(1) & [..._#defs."/$defs/server_validation_ca/$defs/certificate_provider_instance"]])
		grpc_endpoint?: matchN(1, [_#defs."/$defs/server_validation_ca/$defs/grpc_endpoint", list.MaxItems(1) & [..._#defs."/$defs/server_validation_ca/$defs/grpc_endpoint"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/client_certificate/$defs/certificate_provider_instance": close({
		// Plugin instance name, used to locate and load
		// CertificateProvider instance configuration. Set to
		// "google_cloud_private_spiffe" to use Certificate Authority
		// Service certificate provider instance.
		plugin_instance!: string
	})

	_#defs: "/$defs/client_certificate/$defs/grpc_endpoint": close({
		// The target URI of the gRPC endpoint. Only UDS path is
		// supported, and should start with "unix:".
		target_uri!: string
	})

	_#defs: "/$defs/server_validation_ca/$defs/certificate_provider_instance": close({
		// Plugin instance name, used to locate and load
		// CertificateProvider instance configuration. Set to
		// "google_cloud_private_spiffe" to use Certificate Authority
		// Service certificate provider instance.
		plugin_instance!: string
	})

	_#defs: "/$defs/server_validation_ca/$defs/grpc_endpoint": close({
		// The target URI of the gRPC endpoint. Only UDS path is
		// supported, and should start with "unix:".
		target_uri!: string
	})
}
