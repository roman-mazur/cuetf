package res

import "list"

#google_managed_kafka_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_managed_kafka_cluster")
	close({
		// The ID to use for the cluster, which will become the final
		// component of the cluster's name. The ID must be 1-63
		// characters long, and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' to comply with RFC 1035. This
		// value is structured like: 'my-cluster-id'.
		cluster_id!: string

		// The time when the cluster was created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

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
		id?: string

		// ID of the location of the Kafka resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a
		// list of supported locations.
		location!: string

		// The name of the cluster. Structured like:
		// 'projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID'.
		name?: string
		capacity_config?: matchN(1, [#capacity_config, list.MaxItems(1) & [_, ...] & [...#capacity_config]])
		gcp_config?: matchN(1, [#gcp_config, list.MaxItems(1) & [_, ...] & [...#gcp_config]])
		rebalance_config?: matchN(1, [#rebalance_config, list.MaxItems(1) & [...#rebalance_config]])
		project?:  string
		timeouts?: #timeouts

		// The current state of the cluster. Possible values:
		// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'DELETING'.
		state?: string
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the cluster was last updated.
		update_time?: string
	})

	#capacity_config: close({
		// The memory to provision for the cluster in bytes. The value
		// must be between 1 GiB and 8 GiB per vCPU. Ex. 1024Mi, 4Gi.
		memory_bytes!: string

		// The number of vCPUs to provision for the cluster. The minimum
		// is 3.
		vcpu_count!: string
	})

	#gcp_config: close({
		access_config?: matchN(1, [_#defs."/$defs/gcp_config/$defs/access_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gcp_config/$defs/access_config"]])

		// The Cloud KMS Key name to use for encryption. The key must be
		// located in the same region as the cluster and cannot be
		// changed. Must be in the format
		// 'projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY'.
		kms_key?: string
	})

	#rebalance_config: close({
		// The rebalance behavior for the cluster. When not specified,
		// defaults to 'NO_REBALANCE'. Possible values:
		// 'MODE_UNSPECIFIED', 'NO_REBALANCE',
		// 'AUTO_REBALANCE_ON_SCALE_UP'.
		mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tls_config: close({
		trust_config?: matchN(1, [_#defs."/$defs/tls_config/$defs/trust_config", list.MaxItems(1) & [..._#defs."/$defs/tls_config/$defs/trust_config"]])

		// The rules for mapping mTLS certificate Distinguished Names
		// (DNs) to shortened principal names for Kafka ACLs. This field
		// corresponds exactly to the ssl.principal.mapping.rules broker
		// config and matches the format and syntax defined in the Apache
		// Kafka documentation. Setting or modifying this field will
		// trigger a rolling restart of the Kafka brokers to apply the
		// change. An empty string means that the default Kafka behavior
		// is used. Example:
		// 'RULE:^CN=(.?),OU=ServiceUsers.$/$1@example.com/,DEFAULT'
		ssl_principal_mapping_rules?: string
	})

	_#defs: "/$defs/gcp_config/$defs/access_config": close({
		network_configs?: matchN(1, [_#defs."/$defs/gcp_config/$defs/access_config/$defs/network_configs", [_, ...] & [..._#defs."/$defs/gcp_config/$defs/access_config/$defs/network_configs"]])
	})

	_#defs: "/$defs/gcp_config/$defs/access_config/$defs/network_configs": close({
		// Name of the VPC subnet from which the cluster is accessible.
		// Both broker and bootstrap server IP addresses and DNS entries
		// are automatically created in the subnet. There can only be one
		// subnet per network, and the subnet must be located in the same
		// region as the cluster. The project may differ. The name of the
		// subnet must be in the format
		// 'projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET'.
		subnet!: string
	})

	_#defs: "/$defs/tls_config/$defs/trust_config": close({
		cas_configs?: matchN(1, [_#defs."/$defs/tls_config/$defs/trust_config/$defs/cas_configs", [..._#defs."/$defs/tls_config/$defs/trust_config/$defs/cas_configs"]])
	})

	_#defs: "/$defs/tls_config/$defs/trust_config/$defs/cas_configs": close({
		// The name of the CA pool to pull CA certificates from. The CA
		// pool does not need to be in the same project or location as
		// the Kafka cluster. Must be in the format
		// 'projects/PROJECT_ID/locations/LOCATION/caPools/CA_POOL_ID.
		ca_pool!: string
	})
}
