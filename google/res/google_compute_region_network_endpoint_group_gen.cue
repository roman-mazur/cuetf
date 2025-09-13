package res

import "list"

#google_compute_region_network_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_network_endpoint_group")
	close({
		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// Name of the resource; provided by the client when the resource
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

		// This field is only used for PSC and INTERNET NEGs.
		//
		// The URL of the network to which all network endpoints in the
		// NEG belong. Uses
		// "default" project network if unspecified.
		network?: string

		// Type of network endpoints in this network endpoint group.
		// Defaults to SERVERLESS. Default value: "SERVERLESS" Possible
		// values: ["SERVERLESS", "PRIVATE_SERVICE_CONNECT",
		// "INTERNET_IP_PORT", "INTERNET_FQDN_PORT", "GCE_VM_IP_PORTMAP"]
		network_endpoint_type?: string
		project?:               string

		// This field is only used for PSC and INTERNET NEGs.
		//
		// The target service url used to set up private service
		// connection to
		// a Google API or a PSC Producer Service Attachment.
		psc_target_service?: string
		app_engine?: matchN(1, [#app_engine, list.MaxItems(1) & [...#app_engine]])
		cloud_function?: matchN(1, [#cloud_function, list.MaxItems(1) & [...#cloud_function]])
		cloud_run?: matchN(1, [#cloud_run, list.MaxItems(1) & [...#cloud_run]])
		psc_data?: matchN(1, [#psc_data, list.MaxItems(1) & [...#psc_data]])

		// A reference to the region where the regional NEGs reside.
		region!:   string
		timeouts?: #timeouts

		// This field is only used for PSC NEGs.
		//
		// Optional URL of the subnetwork to which all network endpoints
		// in the NEG belong.
		subnetwork?: string
		self_link?:  string
	})

	#app_engine: close({
		// Optional serving service.
		// The service name must be 1-63 characters long, and comply with
		// RFC1035.
		// Example value: "default", "my-service".
		service?: string

		// A template to parse service and version fields from a request
		// URL.
		// URL mask allows for routing to multiple App Engine services
		// without
		// having to create multiple Network Endpoint Groups and backend
		// services.
		//
		// For example, the request URLs "foo1-dot-appname.appspot.com/v1"
		// and
		// "foo1-dot-appname.appspot.com/v2" can be backed by the same
		// Serverless NEG with
		// URL mask "-dot-appname.appspot.com/". The URL mask will parse
		// them to { service = "foo1", version = "v1" } and { service =
		// "foo1", version = "v2" } respectively.
		url_mask?: string

		// Optional serving version.
		// The version must be 1-63 characters long, and comply with
		// RFC1035.
		// Example value: "v1", "v2".
		version?: string
	})

	#cloud_function: close({
		// A user-defined name of the Cloud Function.
		// The function name is case-sensitive and must be 1-63 characters
		// long.
		// Example value: "func1".
		function?: string

		// A template to parse function field from a request URL. URL mask
		// allows
		// for routing to multiple Cloud Functions without having to
		// create
		// multiple Network Endpoint Groups and backend services.
		//
		// For example, request URLs "mydomain.com/function1" and
		// "mydomain.com/function2"
		// can be backed by the same Serverless NEG with URL mask "/". The
		// URL mask
		// will parse them to { function = "function1" } and { function =
		// "function2" } respectively.
		url_mask?: string
	})

	#cloud_run: close({
		// Cloud Run service is the main resource of Cloud Run.
		// The service must be 1-63 characters long, and comply with
		// RFC1035.
		// Example value: "run-service".
		service?: string

		// Cloud Run tag represents the "named-revision" to provide
		// additional fine-grained traffic routing information.
		// The tag must be 1-63 characters long, and comply with RFC1035.
		// Example value: "revision-0010".
		tag?: string

		// A template to parse service and tag fields from a request URL.
		// URL mask allows for routing to multiple Run services without
		// having
		// to create multiple network endpoint groups and backend
		// services.
		//
		// For example, request URLs "foo1.domain.com/bar1" and
		// "foo1.domain.com/bar2"
		// an be backed by the same Serverless Network Endpoint Group
		// (NEG) with
		// URL mask ".domain.com/". The URL mask will parse them to {
		// service="bar1", tag="foo1" }
		// and { service="bar2", tag="foo2" } respectively.
		url_mask?: string
	})

	#psc_data: close({
		// The PSC producer port to use when consumer PSC NEG connects to
		// a producer. If
		// this flag isn't specified for a PSC NEG with endpoint type
		// private-service-connect, then PSC NEG will be connected to a
		// first port in the
		// available PSC producer port range.
		producer_port?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
