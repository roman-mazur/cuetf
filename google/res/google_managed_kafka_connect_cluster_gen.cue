package res

import "list"

#google_managed_kafka_connect_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_managed_kafka_connect_cluster")
	close({
		// The ID to use for the Connect Cluster, which will become the
		// final component of the connect cluster's name. This value is
		// structured like: 'my-connect-cluster-id'.
		connect_cluster_id!: string

		// The time when the cluster was created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the Kafka cluster this Kafka Connect cluster is
		// attached to. Structured like:
		// 'projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID'.
		kafka_cluster!: string
		id?:            string

		// List of label KEY=VALUE pairs to add. Keys must start with a
		// lowercase character and contain only hyphens (-), underscores
		// ( ), lowercase characters, and numbers. Values must contain
		// only hyphens (-), underscores ( ), lowercase characters, and
		// numbers.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// ID of the location of the Kafka Connect resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a
		// list of supported locations.
		location!: string

		// The name of the connect cluster. Structured like:
		// 'projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER_ID'.
		name?: string
		capacity_config!: matchN(1, [#capacity_config, list.MaxItems(1) & [_, ...] & [...#capacity_config]])
		gcp_config!: matchN(1, [#gcp_config, list.MaxItems(1) & [_, ...] & [...#gcp_config]])
		timeouts?: #timeouts
		project?:  string

		// The current state of the connect cluster. Possible values:
		// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'DELETING'.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the cluster was last updated.
		update_time?: string
	})

	#capacity_config: close({
		// The memory to provision for the cluster in bytes. The
		// CPU:memory ratio (vCPU:GiB) must be between 1:1 and 1:8.
		// Minimum: 3221225472 (3 GiB).
		memory_bytes!: string

		// The number of vCPUs to provision for the cluster. The minimum
		// is 3.
		vcpu_count!: string
	})

	#gcp_config: close({
		access_config!: matchN(1, [_#defs."/$defs/gcp_config/$defs/access_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gcp_config/$defs/access_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/gcp_config/$defs/access_config": close({
		network_configs!: matchN(1, [_#defs."/$defs/gcp_config/$defs/access_config/$defs/network_configs", [_, ...] & [..._#defs."/$defs/gcp_config/$defs/access_config/$defs/network_configs"]])
	})

	_#defs: "/$defs/gcp_config/$defs/access_config/$defs/network_configs": close({
		// Additional subnets may be specified. They may be in another
		// region, but must be in the same VPC network. The Connect
		// workers can communicate with network endpoints in either the
		// primary or additional subnets.
		additional_subnets?: [...string]

		// Additional DNS domain names from the subnet's network to be
		// made visible to the Connect Cluster. When using MirrorMaker2,
		// it's necessary to add the bootstrap address's dns domain name
		// of the target cluster to make it visible to the connector. For
		// example:
		// my-kafka-cluster.us-central1.managedkafka.my-project.cloud.goog
		dns_domain_names?: [...string]

		// VPC subnet to make available to the Kafka Connect cluster.
		// Structured like:
		// projects/{project}/regions/{region}/subnetworks/{subnet_id}.
		// It is used to create a Private Service Connect (PSC) interface
		// for the Kafka Connect workers. It must be located in the same
		// region as the Kafka Connect cluster. The CIDR range of the
		// subnet must be within the IPv4 address ranges for private
		// networks, as specified in RFC 1918. The primary subnet CIDR
		// range must have a minimum size of /22 (1024 addresses).
		primary_subnet!: string
	})
}
