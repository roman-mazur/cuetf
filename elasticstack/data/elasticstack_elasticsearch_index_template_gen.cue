package data

import "list"

#elasticstack_elasticsearch_index_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_index_template")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		composed_of?: [...string]
		data_stream?: [...close({
			allow_custom_routing?: bool
			hidden?:               bool
		})]
		id?: string
		index_patterns?: [...string]
		metadata?: string
		name!:     string
		priority?: number
		template?: [...close({
			alias?: [...close({
				filter?:         string
				index_routing?:  string
				is_hidden?:      bool
				is_write_index?: bool
				name?:           string
				routing?:        string
				search_routing?: string
			})]
			lifecycle?: [...close({
				data_retention?: string
			})]
			mappings?: string
			settings?: string
		})]
		version?: number
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
