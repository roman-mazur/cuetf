package res

#google_managed_kafka_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_managed_kafka_topic")
	close({
		// The cluster name.
		cluster!: string

		// Configuration for the topic that are overridden from the
		// cluster defaults. The key of the map is a Kafka topic property
		// name, for example: 'cleanup.policy=compact',
		// 'compression.type=producer'.
		configs?: [string]: string

		// ID of the location of the Kafka resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a
		// list of supported locations.
		location!: string
		id?:       string

		// The name of the topic. The 'topic' segment is used when
		// connecting directly to the cluster. Must be in the format
		// 'projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID'.
		name?: string

		// The number of partitions in a topic. You can increase the
		// partition count for a topic, but you cannot decrease it.
		// Increasing partitions for a topic that uses a key might change
		// how messages are distributed.
		partition_count?: number
		project?:         string
		timeouts?:        #timeouts

		// The number of replicas of each partition. A replication factor
		// of 3 is recommended for high availability.
		replication_factor!: number

		// The ID to use for the topic, which will become the final
		// component of the topic's name. This value is structured like:
		// 'my-topic-name'.
		topic_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
