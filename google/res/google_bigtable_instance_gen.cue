package res

import "list"

#google_bigtable_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigtable_instance")
	close({
		// When the field is set to true or unset in Terraform state, a
		// terraform apply or terraform destroy that would delete the
		// instance will fail. When the field is set to false, deleting
		// the instance is allowed.
		deletion_protection?: bool

		// The human-readable display name of the Bigtable instance.
		// Defaults to the instance name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// When deleting a BigTable instance, this boolean option will
		// delete all backups within the instance.
		force_destroy?: bool

		// A mapping of labels to assign to the resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name (also called Instance Id in the Cloud Console) of the
		// Cloud Bigtable instance. Must be 6-33 characters and must only
		// contain hyphens, lowercase letters and numbers.
		name!: string
		cluster?: matchN(1, [#cluster, [...#cluster]])
		timeouts?: #timeouts

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#cluster: close({
		// The ID of the Cloud Bigtable cluster. Must be 6-30 characters
		// and must only contain hyphens, lowercase letters and numbers.
		cluster_id!: string

		// Describes the Cloud KMS encryption key that will be used to
		// protect the destination Bigtable cluster. The requirements for
		// this key are: 1) The Cloud Bigtable service account associated
		// with the project that contains this cluster must be granted
		// the cloudkms.cryptoKeyEncrypterDecrypter role on the CMEK key.
		// 2) Only regional keys can be used and the region of the CMEK
		// key must match the region of the cluster. 3) All clusters
		// within an instance must use the same CMEK key. Values are of
		// the form
		// projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}
		kms_key_name?: string

		// The node scaling factor of this cluster. One of
		// "NodeScalingFactor1X" or "NodeScalingFactor2X". Defaults to
		// "NodeScalingFactor1X".
		node_scaling_factor?: string

		// The number of nodes in the cluster. If no value is set, Cloud
		// Bigtable automatically allocates nodes based on your data
		// footprint and optimized for 50% storage utilization.
		num_nodes?: number

		// The state of the cluster
		state?: string

		// The storage type to use. One of "SSD" or "HDD". Defaults to
		// "SSD".
		storage_type?: string
		autoscaling_config?: matchN(1, [_#defs."/$defs/cluster/$defs/autoscaling_config", list.MaxItems(1) & [..._#defs."/$defs/cluster/$defs/autoscaling_config"]])

		// The zone to create the Cloud Bigtable cluster in. Each cluster
		// must have a different zone in the same region. Zones that
		// support Bigtable instances are noted on the Cloud Bigtable
		// locations page.
		zone?: string
	})

	#timeouts: close({
		create?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/cluster/$defs/autoscaling_config": close({
		// The target CPU utilization for autoscaling. Value must be
		// between 10 and 80.
		cpu_target!: number

		// The maximum number of nodes for autoscaling.
		max_nodes!: number

		// The minimum number of nodes for autoscaling.
		min_nodes!: number

		// The target storage utilization for autoscaling, in GB, for each
		// node in a cluster. This number is limited between 2560
		// (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192
		// (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set,
		// whatever is already set for the cluster will not change, or if
		// the cluster is just being created, it will use the default
		// value of 2560 for SSD clusters and 8192 for HDD clusters.
		storage_target?: number
	})
}
