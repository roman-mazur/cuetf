package data

import "list"

#elasticstack_elasticsearch_snapshot_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_snapshot_repository")
	azure?: [...{
		base_path?:                  string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		container?:                  string
		location_mode?:              string
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	}]
	fs?: [...{
		chunk_size?:                 string
		compress?:                   bool
		location?:                   string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	}]
	gcs?: [...{
		base_path?:                  string
		bucket?:                     string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	}]
	hdfs?: [...{
		chunk_size?:                 string
		compress?:                   bool
		load_defaults?:              bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		path?:                       string
		readonly?:                   bool
		uri?:                        string
	}]
	id?:   string
	name!: string
	s3?: [...{
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
	}]
	type?: string
	url?: [...{
		chunk_size?:                 string
		compress?:                   bool
		http_max_retries?:           number
		http_socket_timeout?:        string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
		url?:                        string
	}]
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
