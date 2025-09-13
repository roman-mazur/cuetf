package res

import "list"

#google_edgecontainer_vpn_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_edgecontainer_vpn_connection")
	close({
		// The canonical Cluster name to connect to. It is in the form of
		// projects/{project}/locations/{location}/clusters/{cluster}.
		cluster!: string

		// The time when the VPN connection was created.
		create_time?: string

		// A nested object resource.
		details?: [...close({
			cloud_router?: [...close({
				name?: string
			})]
			cloud_vpns?: [...close({
				gateway?: string
			})]
			error?: string
			state?: string
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether this VPN connection has HA enabled on cluster side. If
		// enabled, when creating VPN connection we will attempt to use 2
		// ANG floating IPs.
		enable_high_availability?: bool

		// Labels associated with this resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Google Cloud Platform location.
		location!: string

		// The resource name of VPN connection
		name!: string

		// NAT gateway IP, or WAN IP address. If a customer has multiple
		// NAT IPs, the customer needs to configure NAT such that only
		// one external IP maps to the GMEC Anthos cluster.
		// This is empty if NAT is not used.
		nat_gateway_ip?: string
		timeouts?:       #timeouts
		vpc_project?: matchN(1, [#vpc_project, list.MaxItems(1) & [...#vpc_project]])
		project?: string

		// The VPN connection Cloud Router name.
		router?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the VPN connection was last updated.
		update_time?: string

		// The network ID of VPC to connect to.
		vpc?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_project: close({
		// The project of the VPC to connect to. If not specified, it is
		// the same as the cluster project.
		project_id?: string
	})
}
