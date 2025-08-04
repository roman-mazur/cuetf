package res

import "list"

#elasticstack_elasticsearch_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_role")
	close({
		cluster?: [...string]
		description?: string
		global?:      string
		id?:          string
		metadata?:    string
		name!:        string
		applications?: matchN(1, [#applications, [...#applications]])
		run_as?: [...string]
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		indices?: matchN(1, [#indices, [...#indices]])
		remote_indices?: matchN(1, [#remote_indices, [...#remote_indices]])
	})

	#applications: close({
		application!: string
		privileges!: [...string]
		resources!: [...string]
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

	#indices: close({
		field_security?: matchN(1, [_#defs."/$defs/indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/indices/$defs/field_security"]])
		allow_restricted_indices?: bool
		names!: [...string]
		privileges!: [...string]
		query?: string
	})

	#remote_indices: close({
		field_security?: matchN(1, [_#defs."/$defs/remote_indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/remote_indices/$defs/field_security"]])
		clusters!: [...string]
		names!: [...string]
		privileges!: [...string]
		query?: string
	})

	_#defs: "/$defs/indices/$defs/field_security": close({
		except?: [...string]
		grant?: [...string]
	})

	_#defs: "/$defs/remote_indices/$defs/field_security": close({
		except?: [...string]
		grant?: [...string]
	})
}
