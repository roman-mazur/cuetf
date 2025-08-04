package res

import "list"

#elasticstack_elasticsearch_data_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_data_stream")
	close({
		generation?: number
		hidden?:     bool
		id?:         string
		ilm_policy?: string
		indices?: [...close({
			index_name?: string
			index_uuid?: string
		})]
		metadata?:   string
		name!:       string
		replicated?: bool
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		status?:          string
		system?:          bool
		template?:        string
		timestamp_field?: string
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
