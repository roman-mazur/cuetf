package res

import "list"

#elasticstack_elasticsearch_component_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_component_template")
	id?:       string
	metadata?: string
	name!:     string
	version?:  number
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	template?: #template | list.MaxItems(1) & [_, ...] & [...#template]

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

		#alias: {
			filter?:         string
			index_routing?:  string
			is_hidden?:      bool
			is_write_index?: bool
			name!:           string
			routing?:        string
			search_routing?: string
		}
	}
}
