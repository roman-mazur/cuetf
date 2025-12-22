package res

import "list"

#elasticstack_elasticsearch_logstash_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_logstash_pipeline")
	close({
		// Description of the pipeline.
		description?: string

		// Internal identifier of the resource
		id?: string

		// Date the pipeline was last updated.
		last_modified?: string

		// Configuration for the pipeline.
		pipeline!: string

		// Time in milliseconds to wait for each event before sending an
		// undersized batch to pipeline workers.
		pipeline_batch_delay?: number

		// The maximum number of events an individual worker thread
		// collects before executing filters and outputs.
		pipeline_batch_size?: number

		// Sets the pipeline default value for ecs_compatibility, a
		// setting that is available to plugins that implement an ECS
		// compatibility mode for use with the Elastic Common Schema.
		pipeline_ecs_compatibility?: string

		// Identifier for the pipeline.
		pipeline_id!: string

		// Optional JSON metadata about the pipeline.
		pipeline_metadata?: string

		// Set the pipeline event ordering.
		pipeline_ordered?: string

		// (Beta) Load Java plugins in independent classloaders to isolate
		// their dependencies.
		pipeline_plugin_classloaders?: bool

		// Forces Logstash to exit during shutdown even if there are still
		// inflight events in memory.
		pipeline_unsafe_shutdown?: bool

		// The number of parallel workers used to run the filter and
		// output stages of the pipeline.
		pipeline_workers?: number
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// The maximum number of ACKed events before forcing a checkpoint
		// when persistent queues are enabled.
		queue_checkpoint_acks?: number

		// When enabled, Logstash will retry four times per attempted
		// checkpoint write for any checkpoint writes that fail. Any
		// subsequent errors are not retried.
		queue_checkpoint_retry?: bool

		// The maximum number of written events before forcing a
		// checkpoint when persistent queues are enabled.
		queue_checkpoint_writes?: number

		// When enabled, Logstash waits until the persistent queue is
		// drained before shutting down.
		queue_drain?: bool

		// Units for the total capacity of the queue when persistent
		// queues are enabled.
		queue_max_bytes?: string

		// The maximum number of unread events in the queue when
		// persistent queues are enabled.
		queue_max_events?: number

		// The size of the page data files used when persistent queues are
		// enabled. The queue data consists of append-only data files
		// separated into pages.
		queue_page_capacity?: string

		// The internal queueing model for event buffering. Options are
		// memory for in-memory queueing, or persisted for disk-based
		// acknowledged queueing.
		queue_type?: string

		// User who last updated the pipeline.
		username?: string
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
