package res

import "list"

#google_apigee_target_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_target_server")
	close({
		// A human-readable description of this TargetServer.
		description?: string

		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!: string

		// The host name this target connects to. Value must be a valid
		// hostname as described by RFC-1123.
		host!: string

		// Enabling/disabling a TargetServer is useful when TargetServers
		// are used in load balancing configurations, and one or more
		// TargetServers need to taken out of rotation periodically.
		// Defaults to true.
		is_enabled?: bool
		id?:         string

		// The resource id of this reference. Values must match the
		// regular expression [\w\s-.]+.
		name!: string
		s_sl_info?: matchN(1, [#s_sl_info, list.MaxItems(1) & [...#s_sl_info]])
		timeouts?: #timeouts

		// The port number this target connects to on the given host.
		// Value must be between 1 and 65535, inclusive.
		port!: number

		// Immutable. The protocol used by this TargetServer. Possible
		// values: ["HTTP", "HTTP2", "GRPC_TARGET", "GRPC",
		// "EXTERNAL_CALLOUT"]
		protocol?: string
	})

	#s_sl_info: close({
		// The SSL/TLS cipher suites to be used. For programmable proxies,
		// it must be one of the cipher suite names listed in:
		// http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites.
		// For configurable proxies, it must follow the configuration
		// specified in:
		// https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration.
		// This setting has no effect for configurable proxies when
		// negotiating TLS 1.3.
		ciphers?: [...string]

		// Enables two-way TLS.
		client_auth_enabled?: bool

		// Enables TLS. If false, neither one-way nor two-way TLS will be
		// enabled.
		enabled!: bool

		// If true, TLS is strictly enforced.
		enforce?: bool

		// If true, Edge ignores TLS certificate errors. Valid when
		// configuring TLS for target servers and target endpoints, and
		// when configuring virtual hosts that use 2-way TLS. When used
		// with a target endpoint/target server, if the backend system
		// uses SNI and returns a cert with a subject Distinguished Name
		// (DN) that does not match the hostname, there is no way to
		// ignore the error and the connection fails.
		ignore_validation_errors?: bool

		// Required if clientAuthEnabled is true. The resource ID for the
		// alias containing the private key and cert.
		key_alias?: string

		// Required if clientAuthEnabled is true. The resource ID of the
		// keystore.
		key_store?: string
		common_name?: matchN(1, [_#defs."/$defs/s_sl_info/$defs/common_name", list.MaxItems(1) & [..._#defs."/$defs/s_sl_info/$defs/common_name"]])

		// The TLS versioins to be used.
		protocols?: [...string]

		// The resource ID of the truststore.
		trust_store?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/s_sl_info/$defs/common_name": close({
		// The TLS Common Name string of the certificate.
		value?: string

		// Indicates whether the cert should be matched against as a
		// wildcard cert.
		wildcard_match?: bool
	})
}
