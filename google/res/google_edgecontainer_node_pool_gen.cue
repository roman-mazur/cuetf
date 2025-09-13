package res

import "list"

#google_edgecontainer_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_edgecontainer_node_pool")
	close({
		// The name of the target Distributed Cloud Edge Cluster.
		cluster!: string

		// The time when the node pool was created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels associated with this resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the resource.
		location!: string

		// Only machines matching this filter will be allowed to join the
		// node pool.
		// The filtering language accepts strings like "name=<name>", and
		// is
		// documented in more detail in
		// [AIP-160](https://google.aip.dev/160).
		machine_filter?: string

		// The resource name of the node pool.
		name!: string

		// The number of nodes in the pool.
		node_count!: number

		// Name of the Google Distributed Cloud Edge zone where this node
		// pool will be created. For example:
		// 'us-central1-edge-customer-a'.
		node_location!: string
		local_disk_encryption?: matchN(1, [#local_disk_encryption, list.MaxItems(1) & [...#local_disk_encryption]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		timeouts?: #timeouts

		// The lowest release version among all worker nodes.
		node_version?: string
		project?:      string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the node pool was last updated.
		update_time?: string
	})

	#local_disk_encryption: close({
		// The Cloud KMS CryptoKey e.g.
		// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
		// to use for protecting node local disks.
		// If not specified, a Google-managed key will be used instead.
		kms_key?: string

		// The Cloud KMS CryptoKeyVersion currently in use for protecting
		// node local disks. Only applicable if kmsKey is set.
		kms_key_active_version?: string

		// Availability of the Cloud KMS CryptoKey. If not KEY_AVAILABLE,
		// then nodes may go offline as they cannot access their local
		// data.
		// This can be caused by a lack of permissions to use the key, or
		// if the key is disabled or deleted.
		kms_key_state?: string
	})

	#node_config: close({
		// "The Kubernetes node labels"
		labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
