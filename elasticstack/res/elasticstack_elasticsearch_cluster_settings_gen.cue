package res

import "list"

#elasticstack_elasticsearch_cluster_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_cluster_settings")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		persistent?: matchN(1, [#persistent, list.MaxItems(1) & [...#persistent]])
		transient?: matchN(1, [#transient, list.MaxItems(1) & [...#transient]])
		id?: string
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

	#persistent: close({
		setting?: matchN(1, [_#defs."/$defs/persistent/$defs/setting", [_, ...] & [..._#defs."/$defs/persistent/$defs/setting"]])
	})

	#transient: close({
		setting?: matchN(1, [_#defs."/$defs/transient/$defs/setting", [_, ...] & [..._#defs."/$defs/transient/$defs/setting"]])
	})

	_#defs: "/$defs/persistent/$defs/setting": close({
		name!:  string
		value?: string
		value_list?: [...string]
	})

	_#defs: "/$defs/transient/$defs/setting": close({
		name!:  string
		value?: string
		value_list?: [...string]
	})
}
