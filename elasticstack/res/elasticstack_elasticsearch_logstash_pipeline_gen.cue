package res

import "list"

#elasticstack_elasticsearch_logstash_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_logstash_pipeline")
	close({
		description?:                  string
		id?:                           string
		last_modified?:                string
		pipeline!:                     string
		pipeline_batch_delay?:         number
		pipeline_batch_size?:          number
		pipeline_ecs_compatibility?:   string
		pipeline_id!:                  string
		pipeline_metadata?:            string
		pipeline_ordered?:             string
		pipeline_plugin_classloaders?: bool
		pipeline_unsafe_shutdown?:     bool
		pipeline_workers?:             number
		queue_checkpoint_acks?:        number
		queue_checkpoint_retry?:       bool
		queue_checkpoint_writes?:      number
		queue_drain?:                  bool
		queue_max_bytes?:              string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		queue_max_events?:    number
		queue_page_capacity?: string
		queue_type?:          string
		username?:            string
	})

	#elasticsearch_connection: close({
		api_key?:      string
		bearer_token?: string
		ca_data?:      string
		ca_file?:      string
		cert_data?:    string
		cert_file?:    string
		endpoints?: [...string]
		es_client_authentication?: string
		headers?: [string]: string
		insecure?: bool
		key_data?: string
		key_file?: string
		password?: string
		username?: string
	})
}
