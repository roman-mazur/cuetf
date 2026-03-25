package res

#google_workstations_workstation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_workstations_workstation")
	close({
		timeouts?: #timeouts

		// Client-specified annotations. This is distinct from labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Time when this resource was created.
		create_time?: string

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

		// 'Client-specified environment variables passed to the
		// workstation container's entrypoint.'
		env?: [string]: string

		// Host to which clients can send HTTPS traffic that will be
		// received by the workstation.
		// Authorized traffic will be received to the workstation as HTTP
		// on port 80.
		// To send traffic to a different port, clients may prefix the
		// host with the destination port in the format "{port}-{host}".
		host?: string
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

		// The location where the workstation parent resources reside.
		location!: string

		// Full name of this resource.
		name?:    string
		project?: string

		// Full resource name of the source workstation from which the
		// workstation's persistent
		// directories will be cloned from during creation.
		source_workstation?: string

		// Current state of the workstation.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A system-assigned unique identified for this resource.
		uid?: string

		// The ID of the parent workstation cluster.
		workstation_cluster_id!: string

		// The ID of the parent workstation cluster config.
		workstation_config_id!: string

		// ID to use for the workstation.
		workstation_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
