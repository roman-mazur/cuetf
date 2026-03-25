package data

#google_compute_region_network_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_network_endpoint_group")
	close({
		// This field is only used for SERVERLESS NEGs.
		//
		// Only one of cloud_run, app_engine, cloud_function or
		// serverless_deployment may be set.
		app_engine?: [...close({
			service?:  string
			url_mask?: string
			version?:  string
		})]

		// This field is only used for SERVERLESS NEGs.
		//
		// Only one of cloud_run, app_engine, cloud_function or
		// serverless_deployment may be set.
		cloud_function?: [...close({
			function?: string
			url_mask?: string
		})]

		// This field is only used for SERVERLESS NEGs.
		//
		// Only one of cloud_run, app_engine, cloud_function or
		// serverless_deployment may be set.
		cloud_run?: [...close({
			service?:  string
			tag?:      string
			url_mask?: string
		})]

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string
		id?:          string

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
		name?: string

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

		// This field is only used for PSC NEGs.
		psc_data?: [...close({
			producer_port?: string
		})]

		// This field is only used for PSC and INTERNET NEGs.
		//
		// The target service url used to set up private service
		// connection to
		// a Google API or a PSC Producer Service Attachment.
		psc_target_service?: string

		// A reference to the region where the regional NEGs reside.
		region?:    string
		self_link?: string

		// This field is only used for PSC NEGs.
		//
		// Optional URL of the subnetwork to which all network endpoints
		// in the NEG belong.
		subnetwork?: string
	})
}
