package data

import "list"

#elasticstack_elasticsearch_snapshot_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_snapshot_repository")
	close({
		// Azure Blob storage as a repository. Set only if the type of the
		// fetched repo is `azure`.
		azure?: [...close({
			base_path?:                  string
			chunk_size?:                 string
			client?:                     string
			compress?:                   bool
			container?:                  string
			location_mode?:              string
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			readonly?:                   bool
		})]

		// Shared filesystem repository. Set only if the type of the
		// fetched repo is `fs`.
		fs?: [...close({
			chunk_size?:                 string
			compress?:                   bool
			location?:                   string
			max_number_of_snapshots?:    number
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			readonly?:                   bool
		})]

		// Google Cloud Storage service as a repository. Set only if the
		// type of the fetched repo is `gcs`.
		gcs?: [...close({
			base_path?:                  string
			bucket?:                     string
			chunk_size?:                 string
			client?:                     string
			compress?:                   bool
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			readonly?:                   bool
		})]

		// HDFS File System as a repository. Set only if the type of the
		// fetched repo is `hdfs`.
		hdfs?: [...close({
			chunk_size?:                 string
			compress?:                   bool
			load_defaults?:              bool
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			path?:                       string
			readonly?:                   bool
			uri?:                        string
		})]

		// Internal identifier of the resource
		id?: string

		// Name of the snapshot repository.
		name!: string

		// AWS S3 as a repository. Set only if the type of the fetched
		// repo is `s3`.
		s3?: [...close({
			base_path?:                  string
			bucket?:                     string
			buffer_size?:                string
			canned_acl?:                 string
			chunk_size?:                 string
			client?:                     string
			compress?:                   bool
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			path_style_access?:          bool
			readonly?:                   bool
			server_side_encryption?:     bool
			storage_class?:              string
		})]
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// Repository type.
		type?: string

		// URL repository. Set only if the type of the fetched repo is
		// `url`.
		url?: [...close({
			chunk_size?:                 string
			compress?:                   bool
			http_max_retries?:           number
			http_socket_timeout?:        string
			max_number_of_snapshots?:    number
			max_restore_bytes_per_sec?:  string
			max_snapshot_bytes_per_sec?: string
			readonly?:                   bool
			url?:                        string
		})]
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
