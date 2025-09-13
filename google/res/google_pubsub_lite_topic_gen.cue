package res

import "list"

#google_pubsub_lite_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_lite_topic")
	close({
		id?: string

		// Name of the topic.
		name!:    string
		project?: string

		// The region of the pubsub lite topic.
		region?: string

		// The zone of the pubsub lite topic.
		zone?: string
		partition_config?: matchN(1, [#partition_config, list.MaxItems(1) & [...#partition_config]])
		reservation_config?: matchN(1, [#reservation_config, list.MaxItems(1) & [...#reservation_config]])
		retention_config?: matchN(1, [#retention_config, list.MaxItems(1) & [...#retention_config]])
		timeouts?: #timeouts
	})

	#partition_config: close({
		capacity?: matchN(1, [_#defs."/$defs/partition_config/$defs/capacity", list.MaxItems(1) & [..._#defs."/$defs/partition_config/$defs/capacity"]])

		// The number of partitions in the topic. Must be at least 1.
		count!: number
	})

	#reservation_config: close({
		// The Reservation to use for this topic's throughput capacity.
		throughput_reservation?: string
	})

	#retention_config: close({
		// The provisioned storage, in bytes, per partition. If the number
		// of bytes stored
		// in any of the topic's partitions grows beyond this value, older
		// messages will be
		// dropped to make room for newer ones, regardless of the value of
		// period.
		per_partition_bytes!: string

		// How long a published message is retained. If unset, messages
		// will be retained as
		// long as the bytes retained for each partition is below
		// perPartitionBytes. A
		// duration in seconds with up to nine fractional digits,
		// terminated by 's'.
		// Example: "3.5s".
		period?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/partition_config/$defs/capacity": close({
		// Subscribe throughput capacity per partition in MiB/s. Must be
		// >= 4 and <= 16.
		publish_mib_per_sec!: number

		// Publish throughput capacity per partition in MiB/s. Must be >=
		// 4 and <= 16.
		subscribe_mib_per_sec!: number
	})
}
