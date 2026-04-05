package res

import "list"

#google_workstations_workstation_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_workstations_workstation_cluster")
	close({
		domain_config?: matchN(1, [#domain_config, list.MaxItems(1) & [...#domain_config]])
		private_cluster_config?: matchN(1, [#private_cluster_config, list.MaxItems(1) & [...#private_cluster_config]])
		timeouts?: #timeouts

		// Client-specified annotations. This is distinct from labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Status conditions describing the current resource state.
		conditions?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]

		// The private IP address of the control plane for this
		// workstation cluster.
		// Workstation VMs need access to this IP address to work with the
		// service, so make sure that your firewall rules allow egress
		// from the workstation VMs to this address.
		control_plane_ip?: string

		// Time when this resource was created.
		create_time?: string

		// Whether this resource is in degraded mode, in which case it may
		// require user action to restore full functionality.
		// Details can be found in the conditions field.
		degraded?: bool

		// Human-readable name for this resource.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Checksum computed by the server.
		// May be sent on update and delete requests to ensure that the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Client-specified labels that are applied to the resource and
		// that are also propagated to the underlying Compute Engine
		// resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the workstation cluster should reside.
		location?: string

		// The name of the cluster resource.
		name?: string

		// The relative resource name of the VPC network on which the
		// instance can be accessed.
		// It is specified in the following form:
		// "projects/{projectNumber}/global/networks/{network_id}".
		network!: string
		project?: string

		// Name of the Compute Engine subnetwork in which instances
		// associated with this cluster will be created.
		// Must be part of the subnetwork specified for this cluster.
		subnetwork!: string

		// Resource manager tags bound to this resource.
		// For example:
		// "123/environment": "production",
		// "123/costCenter": "marketing"
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The system-generated UID of the resource.
		uid?: string

		// ID to use for the workstation cluster.
		workstation_cluster_id!: string
	})

	#domain_config: close({
		// Domain used by Workstations for HTTP ingress.
		domain!: string
	})

	#private_cluster_config: close({
		// Additional project IDs that are allowed to attach to the
		// workstation cluster's service attachment.
		// By default, the workstation cluster's project and the VPC host
		// project (if different) are allowed.
		allowed_projects?: [...string]

		// Hostname for the workstation cluster.
		// This field will be populated only when private endpoint is
		// enabled.
		// To access workstations in the cluster, create a new DNS zone
		// mapping this domain name to an internal IP address and a
		// forwarding rule mapping that address to the service
		// attachment.
		cluster_hostname?: string

		// Whether Workstations endpoint is private.
		enable_private_endpoint!: bool

		// Service attachment URI for the workstation cluster.
		// The service attachment is created when private endpoint is
		// enabled.
		// To access workstations in the cluster, configure access to the
		// managed service using (Private Service
		// Connect)[https://cloud.google.com/vpc/docs/configure-private-service-connect-services].
		service_attachment_uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
