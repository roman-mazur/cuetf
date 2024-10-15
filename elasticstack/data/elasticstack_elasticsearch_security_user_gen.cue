package data

import "list"

#elasticstack_elasticsearch_security_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_user")
	email?:     string
	enabled?:   bool
	full_name?: string
	id?:        string
	metadata?:  string
	roles?: [...string]
	username!: string
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
