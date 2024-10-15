package elasticstack

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	elasticsearch?: #elasticsearch | list.MaxItems(1) & [...#elasticsearch]
	fleet?: #fleet | list.MaxItems(1) & [...#fleet]
	kibana?: #kibana | list.MaxItems(1) & [...#kibana]

	#elasticsearch: {
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

	#fleet: {
		api_key?: string
		ca_certs?: [...string]
		endpoint?: string
		insecure?: bool
		password?: string
		username?: string
	}

	#kibana: {
		api_key?: string
		ca_certs?: [...string]
		endpoints?: [...string]
		insecure?: bool
		password?: string
		username?: string
	}
}
