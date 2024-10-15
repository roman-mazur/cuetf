package res

import "list"

#elasticstack_elasticsearch_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_role")
	cluster?: [...string]
	global?:   string
	id?:       string
	metadata?: string
	name!:     string
	run_as?: [...string]
	applications?: #applications | [...#applications]
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	indices?: #indices | [...#indices]
	remote_indices?: #remote_indices | [...#remote_indices]

	#applications: {
		application!: string
		privileges!: [...string]
		resources!: [...string]
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

	#indices: {
		allow_restricted_indices?: bool
		names!: [...string]
		privileges!: [...string]
		query?: string
		field_security?: #indices.#field_security | list.MaxItems(1) & [...#indices.#field_security]

		#field_security: {
			except?: [...string]
			grant?: [...string]
		}
	}

	#remote_indices: {
		clusters!: [...string]
		names!: [...string]
		privileges!: [...string]
		query?: string
		field_security?: #remote_indices.#field_security | list.MaxItems(1) & [...#remote_indices.#field_security]

		#field_security: {
			except?: [...string]
			grant?: [...string]
		}
	}
}
