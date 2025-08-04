package res

#elasticstack_elasticsearch_data_stream_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_data_stream_lifecycle")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])
		data_retention?:   string
		enabled?:          bool
		expand_wildcards?: string
		id?:               string
		downsampling?: matchN(1, [close({
			after!:          string
			fixed_interval!: string
		}), [...close({
			after!:          string
			fixed_interval!: string
		})]])
		name!: string
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
