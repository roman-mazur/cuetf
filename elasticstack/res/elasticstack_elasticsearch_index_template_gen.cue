package res

import "list"

#elasticstack_elasticsearch_index_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_index_template")
	composed_of?: [...string]
	id?: string
	index_patterns!: [...string]
	metadata?: string
	name!:     string
	priority?: number
	version?:  number
	data_stream?: #data_stream | list.MaxItems(1) & [...#data_stream]
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	template?: #template | list.MaxItems(1) & [...#template]

	#data_stream: {
		allow_custom_routing?: bool
		hidden?:               bool
	}

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

	#template: {
		mappings?: string
		settings?: string
		alias?: #template.#alias | [...#template.#alias]
		lifecycle?: #template.#lifecycle | list.MaxItems(1) & [...#template.#lifecycle]

		#alias: {
			filter?:         string
			index_routing?:  string
			is_hidden?:      bool
			is_write_index?: bool
			name!:           string
			routing?:        string
			search_routing?: string
		}

		#lifecycle: data_retention!: string
	}
}
