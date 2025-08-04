package res

import "list"

#elasticstack_elasticsearch_component_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_component_template")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		id?:       string
		metadata?: string
		name!:     string
		version?:  number
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
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

	#template: close({
		alias?: matchN(1, [_#defs."/$defs/template/$defs/alias", [..._#defs."/$defs/template/$defs/alias"]])
		mappings?: string
		settings?: string
	})

	_#defs: "/$defs/template/$defs/alias": close({
		filter?:         string
		index_routing?:  string
		is_hidden?:      bool
		is_write_index?: bool
		name!:           string
		routing?:        string
		search_routing?: string
	})
}
