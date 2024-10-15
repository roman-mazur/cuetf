package res

import "list"

#elasticstack_elasticsearch_snapshot_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_snapshot_lifecycle")
	expand_wildcards?: string
	expire_after?:     string
	feature_states?: [...string]
	id?:                   string
	ignore_unavailable?:   bool
	include_global_state?: bool
	indices?: [...string]
	max_count?:     number
	metadata?:      string
	min_count?:     number
	name!:          string
	partial?:       bool
	repository!:    string
	schedule!:      string
	snapshot_name?: string
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]

	#elasticsearch_connection: {
		api_key?:      string
		bearer_token?: string
		ca_data?:      string
		ca_file?:      string
		cert_data?:    string
		cert_file?:    string
		endpoints?: [...string]
		es_client_authentication?: string
		insecure?:                 bool
		key_data?:                 string
		key_file?:                 string
		password?:                 string
		username?:                 string
	}
}
