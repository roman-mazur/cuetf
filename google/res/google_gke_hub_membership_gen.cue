package res

import "list"

#google_gke_hub_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gke_hub_membership")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
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
		location?: string

		// The client-provided identifier of the membership.
		membership_id!: string
		authority?: matchN(1, [#authority, list.MaxItems(1) & [...#authority]])
		endpoint?: matchN(1, [#endpoint, list.MaxItems(1) & [...#endpoint]])
		timeouts?: #timeouts

		// The unique identifier of the membership.
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#authority: close({
		// A JSON Web Token (JWT) issuer URI. 'issuer' must start with
		// 'https://' and // be a valid
		// with length <2000 characters. For example:
		// 'https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster'.
		// If the cluster is provisioned with Terraform, this is
		// '"https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}"'.
		issuer!: string
	})

	#endpoint: close({
		gke_cluster?: matchN(1, [_#defs."/$defs/endpoint/$defs/gke_cluster", list.MaxItems(1) & [..._#defs."/$defs/endpoint/$defs/gke_cluster"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/endpoint/$defs/gke_cluster": close({
		// Self-link of the GCP resource for the GKE cluster.
		// For example:
		// '//container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster'.
		// It can be at the most 1000 characters in length. If the cluster
		// is provisioned with Terraform,
		// this can be
		// '"//container.googleapis.com/${google_container_cluster.my-cluster.id}"'
		// or
		// 'google_container_cluster.my-cluster.id'.
		resource_link!: string
	})
}
