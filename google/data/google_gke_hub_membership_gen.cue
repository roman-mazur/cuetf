package data

#google_gke_hub_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_membership")
	close({
		// Authority encodes how Google will recognize identities from
		// this Membership.
		// See the workload identity documentation for more details:
		// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
		authority?: [...close({
			issuer?: string
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If this Membership is a Kubernetes API server hosted on GKE,
		// this is a self link to its GCP resource.
		endpoint?: [...close({
			gke_cluster?: [...close({
				resource_link?: string
			})]
		})]
		id?: string

		// Labels to apply to this membership.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location of the membership.
		// The default value is 'global'.
		location!: string

		// The client-provided identifier of the membership.
		membership_id!: string

		// The unique identifier of the membership.
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
