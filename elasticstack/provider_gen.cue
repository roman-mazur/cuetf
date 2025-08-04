package elasticstack

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		elasticsearch?: matchN(1, [#elasticsearch, list.MaxItems(1) & [...#elasticsearch]])
		fleet?: matchN(1, [#fleet, list.MaxItems(1) & [...#fleet]])
		kibana?: matchN(1, [#kibana, list.MaxItems(1) & [...#kibana]])
	})

	#elasticsearch: close({
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

	#fleet: close({
		api_key?: string
		ca_certs?: [...string]
		endpoint?: string
		insecure?: bool
		password?: string
		username?: string
	})

	#kibana: close({
		api_key?: string
		ca_certs?: [...string]
		endpoints?: [...string]
		insecure?: bool
		password?: string
		username?: string
	})
}
