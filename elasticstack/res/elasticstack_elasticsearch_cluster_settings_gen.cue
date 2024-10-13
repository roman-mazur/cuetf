package res

import "list"

#elasticstack_elasticsearch_cluster_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_cluster_settings")
	id?: string
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	persistent?: #persistent | list.MaxItems(1) & [...#persistent]
	transient?: #transient | list.MaxItems(1) & [...#transient]

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

	#persistent: {
		setting?: #persistent.#setting | [_, ...] & [...#persistent.#setting]

		#setting: {
			name!:  string
			value?: string
			value_list?: [...string]
		}
	}

	#transient: {
		setting?: #transient.#setting | [_, ...] & [...#transient.#setting]

		#setting: {
			name!:  string
			value?: string
			value_list?: [...string]
		}
	}
}
