package res

import "list"

#google_managed_kafka_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_managed_kafka_connector")
	close({
		// Connector config as keys/values. The keys of the map are
		// connector property names, for example: 'connector.class',
		// 'tasks.max', 'key.converter'.
		configs?: [string]: string

		// The connect cluster name.
		connect_cluster!: string

		// The ID to use for the connector, which will become the final
		// component of the connector's name. This value is structured
		// like: 'my-connector-id'.
		connector_id!: string
		id?:           string

		// ID of the location of the Kafka Connect resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a
		// list of supported locations.
		location!: string
		task_restart_policy?: matchN(1, [#task_restart_policy, list.MaxItems(1) & [...#task_restart_policy]])

		// The name of the connector. The 'connector' segment is used when
		// connecting directly to the connect cluster. Structured like:
		// 'projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID'.
		name?: string

		// The current state of the connect. Possible values:
		// 'STATE_UNSPECIFIED', 'UNASSIGNED', 'RUNNING', 'PAUSED',
		// 'FAILED', 'RESTARTING', and 'STOPPED'.
		state?:    string
		project?:  string
		timeouts?: #timeouts
	})

	#task_restart_policy: close({
		// The maximum amount of time to wait before retrying a failed
		// task. This sets an upper bound for the backoff delay.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		maximum_backoff?: string

		// The minimum amount of time to wait before retrying a failed
		// task. This sets a lower bound for the backoff delay.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		minimum_backoff?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
