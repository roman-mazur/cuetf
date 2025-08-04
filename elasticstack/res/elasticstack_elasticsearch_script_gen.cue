package res

import "list"

#elasticstack_elasticsearch_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_script")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		context?:   string
		id?:        string
		lang!:      string
		params?:    string
		script_id!: string
		source!:    string
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
