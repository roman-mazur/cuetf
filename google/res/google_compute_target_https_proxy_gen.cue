package res

#google_compute_target_https_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_target_https_proxy")
	close({
		// URLs to certificate manager certificate resources that are used
		// to authenticate connections between users and the load
		// balancer.
		// Certificate manager certificates only apply when the load
		// balancing scheme is set to INTERNAL_MANAGED.
		// For EXTERNAL and EXTERNAL_MANAGED, use certificate_map instead.
		// sslCertificates and certificateManagerCertificates fields can
		// not be defined together.
		// Accepted format is
		// '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}'
		// or just the self_link
		// 'projects/{project}/locations/{location}/certificates/{resourceName}'
		certificate_manager_certificates?: [...string]

		// A reference to the CertificateMap resource uri that identifies
		// a certificate map
		// associated with the given target proxy. This field is only
		// supported for EXTERNAL and EXTERNAL_MANAGED load balancing
		// schemes.
		// For INTERNAL_MANAGED, use certificate_manager_certificates
		// instead.
		// Accepted format is
		// '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}'.
		certificate_map?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object. This field is used in optimistic locking.
		// This field will be ignored when inserting a TargetHttpsProxy.
		// An up-to-date fingerprint must be provided in order to
		// patch the TargetHttpsProxy; otherwise, the request will fail
		// with error 412 conditionNotMet.
		// To see the latest fingerprint, make a get() request to retrieve
		// the TargetHttpsProxy.
		// A base64-encoded string.
		fingerprint?: string

		// Specifies how long to keep a connection open, after completing
		// a response,
		// while there is no matching traffic (in seconds). If an HTTP
		// keepalive is
		// not specified, a default value will be used. For Global
		// external HTTP(S) load balancer, the default value is 610
		// seconds, the
		// minimum allowed value is 5 seconds and the maximum allowed
		// value is 1200
		// seconds. For cross-region internal HTTP(S) load balancer, the
		// default
		// value is 600 seconds, the minimum allowed value is 5 seconds,
		// and the
		// maximum allowed value is 600 seconds. For Global external
		// HTTP(S) load
		// balancer (classic), this option is not available publicly.
		http_keep_alive_timeout_sec?: number
		id?:                          string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:    string
		project?: string

		// This field only applies when the forwarding rule that
		// references
		// this target proxy has a loadBalancingScheme set to
		// INTERNAL_SELF_MANAGED.
		proxy_bind?: bool

		// The unique identifier for the resource.
		proxy_id?: number

		// Specifies the QUIC override policy for this resource. This
		// determines
		// whether the load balancer will attempt to negotiate QUIC with
		// clients
		// or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
		// specified, Google manages whether QUIC is used. Default value:
		// "NONE" Possible values: ["NONE", "ENABLE", "DISABLE"]
		quic_override?: string
		self_link?:     string
		timeouts?:      #timeouts

		// A URL referring to a networksecurity.ServerTlsPolicy
		// resource that describes how the proxy should authenticate
		// inbound
		// traffic. serverTlsPolicy only applies to a global
		// TargetHttpsProxy
		// attached to globalForwardingRules with the loadBalancingScheme
		// set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
		// For details which ServerTlsPolicy resources are accepted with
		// INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
		// loadBalancingScheme consult ServerTlsPolicy documentation.
		// If left blank, communications are not encrypted.
		//
		// If you remove this field from your configuration at the same
		// time as
		// deleting or recreating a referenced ServerTlsPolicy resource,
		// you will
		// receive a resourceInUseByAnotherResource error. Use
		// lifecycle.create_before_destroy
		// within the ServerTlsPolicy resource to avoid this.
		server_tls_policy?: string

		// URLs to SslCertificate resources that are used to authenticate
		// connections between users and the load balancer.
		// Currently, you may specify up to 15 SSL certificates.
		// sslCertificates do not apply when the load balancing scheme is
		// set to INTERNAL_SELF_MANAGED.
		// sslCertificates and certificateManagerCertificates can not be
		// defined together.
		ssl_certificates?: [...string]

		// A reference to the SslPolicy resource that will be associated
		// with
		// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
		// resource will not have any SSL policy configured.
		ssl_policy?: string

		// Specifies whether TLS 1.3 0-RTT Data (“Early Data”) should be
		// accepted for this service.
		// Early Data allows a TLS resumption handshake to include the
		// initial application payload
		// (a HTTP request) alongside the handshake, reducing the
		// effective round trips to “zero”.
		// This applies to TLS 1.3 connections over TCP (HTTP/2) as well
		// as over UDP (QUIC/h3). Possible values: ["STRICT",
		// "PERMISSIVE", "UNRESTRICTED", "DISABLED"]
		tls_early_data?: string

		// A reference to the UrlMap resource that defines the mapping
		// from URL
		// to the BackendService.
		url_map!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
