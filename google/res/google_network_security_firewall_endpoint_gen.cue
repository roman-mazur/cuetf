package res

#google_network_security_firewall_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_firewall_endpoint")
	close({
		// List of networks that are associated with this endpoint in the
		// local zone.
		// This is a projection of the FirewallEndpointAssociations
		// pointing at this
		// endpoint. A network will only appear in this list after traffic
		// routing is
		// fully configured. Format:
		// projects/{project}/global/networks/{name}.
		associated_networks?: [...string]

		// Project to bill on endpoint uptime usage.
		billing_project_id!: string

		// Time the firewall endpoint was created in UTC.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location (zone) of the firewall endpoint.
		location!: string

		// The name of the firewall endpoint resource.
		name!: string

		// The name of the parent this firewall endpoint belongs to.
		// Format: organizations/{organization_id}.
		parent!:   string
		timeouts?: #timeouts

		// Whether reconciling is in progress, recommended per
		// https://google.aip.dev/128.
		reconciling?: bool

		// Server-defined URL of this resource.
		self_link?: string

		// The current state of the endpoint.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the firewall endpoint was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
