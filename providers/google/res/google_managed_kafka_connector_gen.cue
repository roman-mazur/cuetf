package res

import "list"

google_managed_kafka_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_managed_kafka_connector")
	close({
		task_restart_policy?: matchN(1, [#task_restart_policy, list.MaxItems(1) & [...#task_restart_policy]])
		timeouts?: #timeouts

		// Connector config as keys/values. The keys of the map are connector property
		// names, for example: 'connector.class', 'tasks.max', 'key.converter'.
		configs?: [string]: string

		// The connect cluster name.
		connect_cluster!: string

		// The ID to use for the connector, which will become the final component of the
		// connector's name. This value is structured like: 'my-connector-id'.
		connector_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// ID of the location of the Kafka Connect resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a list of
		// supported locations.
		location!: string

		// The name of the connector. The 'connector' segment is used when connecting
		// directly to the connect cluster. Structured like:
		// 'projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID'.
		name?: string

		// The current state of the connect. Possible values: 'STATE_UNSPECIFIED',
		// 'UNASSIGNED', 'RUNNING', 'PAUSED', 'FAILED', 'RESTARTING', and 'STOPPED'.
		state?:   string
		project?: string
	})

	#task_restart_policy: close({
		// The maximum amount of time to wait before retrying a failed task. This sets
		// an upper bound for the backoff delay.
		// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
		maximum_backoff?: string

		// The minimum amount of time to wait before retrying a failed task. This sets a
		// lower bound for the backoff delay.
		// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
		minimum_backoff?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
