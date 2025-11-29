package res

#google_compute_region_target_https_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_target_https_proxy")
	close({
		// URLs to certificate manager certificate resources that are used
		// to authenticate connections between users and the load
		// balancer.
		// sslCertificates and certificateManagerCertificates can't be
		// defined together.
		// Accepted format is
		// '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}'
		// or just the self_link
		// 'projects/{project}/locations/{location}/certificates/{resourceName}'
		certificate_manager_certificates?: [...string]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Specifies how long to keep a connection open, after completing
		// a response,
		// while there is no matching traffic (in seconds). If an HTTP
		// keepalive is
		// not specified, a default value (600 seconds) will be used. For
		// Regioanl
		// HTTP(S) load balancer, the minimum allowed value is 5 seconds
		// and the
		// maximum allowed value is 600 seconds.
		http_keep_alive_timeout_sec?: number

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
		name!: string
		id?:   string

		// The unique identifier for the resource.
		proxy_id?: number
		project?:  string

		// The Region in which the created target https proxy should
		// reside.
		// If it is not provided, the provider region is used.
		region?:    string
		self_link?: string

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
		// At least one SSL certificate must be specified. Currently, you
		// may specify up to 15 SSL certificates.
		// sslCertificates do not apply when the load balancing scheme is
		// set to INTERNAL_SELF_MANAGED.
		ssl_certificates?: [...string]

		// A reference to the Region SslPolicy resource that will be
		// associated with
		// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
		// resource will not have any SSL policy configured.
		ssl_policy?: string
		timeouts?:   #timeouts

		// A reference to the RegionUrlMap resource that defines the
		// mapping from URL
		// to the RegionBackendService.
		url_map!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
