package res

import "list"

#scaleway_kafka_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_kafka_cluster")
	close({
		private_network?: matchN(1, [#private_network, list.MaxItems(1) & [...#private_network]])
		timeouts?: #timeouts

		// Date and time of cluster creation (RFC 3339 format)
		created_at?: string
		id?:         string

		// Name of the Kafka cluster
		name!: string

		// Number of nodes in the cluster
		node_amount!: number

		// Node type to use for the cluster
		node_type!: string

		// Password for the Kafka user
		password?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Public endpoint configuration
		public_network?: [...close({
			dns_records?: [...string]
			id?:   string
			port?: number
		})]

		// The region you want to attach the resource to
		region?: string

		// The status of the cluster
		status?: string

		// List of tags to apply
		tags?: [...string]

		// Date and time of cluster last update (RFC 3339 format)
		updated_at?: string

		// Username for the Kafka user
		user_name?: string

		// Kafka version to use
		version!: string

		// Volume size in GB
		volume_size_in_gb!: number

		// Type of volume where data is stored
		volume_type!: string
	})

	#private_network: close({
		// DNS records for the private endpoint
		dns_records?: [...string]

		// The endpoint ID
		id?: string

		// The private network ID
		pn_id!: string

		// TCP port number
		port?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
