package res

#google_network_services_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_mesh")
	close({
		// Time the Mesh was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. If set to a valid TCP port (1-65535), instructs the
		// SIDECAR proxy to listen on the
		// specified port of localhost (127.0.0.1) address. The SIDECAR
		// proxy will expect all traffic to
		// be redirected to this port regardless of its actual ip:port
		// destination. If unset, a port
		// '15001' is used as the interception port. This will is
		// applicable only for sidecar proxy
		// deployments.
		interception_port?: number
		id?:                string

		// Set of label tags associated with the Mesh resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location (region) of the Mesh resource to be created. Only the
		// value 'global' is currently allowed; defaults to 'global' if
		// omitted.
		location?: string

		// Short name of the Mesh resource to be created.
		name!:     string
		project?:  string
		timeouts?: #timeouts

		// Server-defined URL of this resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the Mesh was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
