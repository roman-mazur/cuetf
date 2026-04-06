package data

#scaleway_kafka_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_kafka_cluster")
	close({
		// The ID of the Kafka cluster
		cluster_id?: string

		// Date and time of cluster creation (RFC 3339 format)
		created_at?: string
		id?:         string

		// Name of the Kafka cluster
		name?: string

		// Number of nodes in the cluster
		node_amount?: number

		// Node type to use for the cluster
		node_type?: string

		// Password for the Kafka user
		password?: string

		// Private network to expose your Kafka cluster
		private_network?: [...close({
			dns_records?: [...string]
			id?:    string
			pn_id?: string
			port?:  number
		})]

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
		version?: string

		// Volume size in GB
		volume_size_in_gb?: number

		// Type of volume where data is stored
		volume_type?: string
	})
}
