package res

import "list"

#google_network_management_connectivity_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_management_connectivity_test")
	close({
		// Whether the analysis should skip firewall checking. Default
		// value is false.
		bypass_firewall_checks?: bool

		// The user-supplied description of the Connectivity Test.
		// Maximum of 512 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Unique name for the connectivity test.
		name!: string
		id?:   string

		// IP Protocol of the test. When not provided, "TCP" is assumed.
		protocol?: string

		// Other projects that may be relevant for reachability analysis.
		// This is applicable to scenarios where a test can cross project
		// boundaries.
		related_projects?: [...string]

		// Whether run analysis for the return path from destination to
		// source.
		// Default value is false.
		round_trip?: bool
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#destination: close({
		// A Cloud SQL instance URI.
		cloud_sql_instance?: string

		// Forwarding rule URI. Forwarding rules are frontends for load
		// balancers,
		// PSC endpoints, and Protocol Forwarding.
		forwarding_rule?: string

		// A DNS endpoint of Google Kubernetes Engine cluster control
		// plane.
		// Requires gke_master_cluster to be set, can't be used
		// simultaneoulsly with
		// ip_address or network. Applicable only to destination endpoint.
		fqdn?: string

		// A cluster URI for Google Kubernetes Engine cluster control
		// plane.
		gke_master_cluster?: string

		// A Compute Engine instance URI.
		instance?: string

		// The IP address of the endpoint, which can be an external or
		// internal IP.
		ip_address?: string

		// A VPC network URI.
		network?: string

		// The IP protocol port of the endpoint. Only applicable when
		// protocol is
		// TCP or UDP.
		port?: number

		// Project ID where the endpoint is located.
		// The project ID can be derived from the URI if you provide a
		// endpoint or
		// network URI.
		// The following are two cases where you may need to provide the
		// project ID:
		// 1. Only the IP address is specified, and the IP address is
		// within a Google
		// Cloud project.
		// 2. When you are using Shared VPC and the IP address that you
		// provide is
		// from the service project. In this case, the network that the IP
		// address
		// resides in is defined in the host project.
		project_id?: string

		// A Redis Cluster URI.
		redis_cluster?: string

		// A Redis Instance URI.
		redis_instance?: string
	})

	#source: close({
		// A Cloud SQL instance URI.
		cloud_sql_instance?: string

		// A cluster URI for Google Kubernetes Engine cluster control
		// plane.
		gke_master_cluster?: string

		// A Compute Engine instance URI.
		instance?: string

		// The IP address of the endpoint, which can be an external or
		// internal IP.
		ip_address?: string

		// A VPC network URI.
		network?: string

		// Type of the network where the endpoint is located. Possible
		// values: ["GCP_NETWORK", "NON_GCP_NETWORK"]
		network_type?: string
		app_engine_version?: matchN(1, [_#defs."/$defs/source/$defs/app_engine_version", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/app_engine_version"]])
		cloud_function?: matchN(1, [_#defs."/$defs/source/$defs/cloud_function", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/cloud_function"]])
		cloud_run_revision?: matchN(1, [_#defs."/$defs/source/$defs/cloud_run_revision", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/cloud_run_revision"]])

		// The IP protocol port of the endpoint. Only applicable when
		// protocol is
		// TCP or UDP.
		port?: number

		// Project ID where the endpoint is located.
		// The project ID can be derived from the URI if you provide a
		// endpoint or
		// network URI.
		// The following are two cases where you may need to provide the
		// project ID:
		// 1. Only the IP address is specified, and the IP address is
		// within a Google
		// Cloud project.
		// 2. When you are using Shared VPC and the IP address that you
		// provide is
		// from the service project. In this case, the network that the IP
		// address
		// resides in is defined in the host project.
		project_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/source/$defs/app_engine_version": close({
		// An App Engine service version name.
		uri?: string
	})

	_#defs: "/$defs/source/$defs/cloud_function": close({
		// A Cloud Function name.
		uri?: string
	})

	_#defs: "/$defs/source/$defs/cloud_run_revision": close({
		// A Cloud Run revision URI.
		uri?: string
	})
}
