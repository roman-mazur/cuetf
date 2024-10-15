package res

import "list"

#elasticstack_elasticsearch_snapshot_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_snapshot_repository")
	id?:     string
	name!:   string
	verify?: bool
	azure?: #azure | list.MaxItems(1) & [...#azure]
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	fs?: #fs | list.MaxItems(1) & [...#fs]
	gcs?: #gcs | list.MaxItems(1) & [...#gcs]
	hdfs?: #hdfs | list.MaxItems(1) & [...#hdfs]
	s3?: #s3 | list.MaxItems(1) & [...#s3]
	url?: #url | list.MaxItems(1) & [...#url]

	#azure: {
		base_path?:                  string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		container!:                  string
		location_mode?:              string
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
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

	#fs: {
		chunk_size?:                 string
		compress?:                   bool
		location!:                   string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	}

	#gcs: {
		base_path?:                  string
		bucket!:                     string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	}

	#hdfs: {
		chunk_size?:                 string
		compress?:                   bool
		load_defaults?:              bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		path!:                       string
		readonly?:                   bool
		uri!:                        string
	}

	#s3: {
		base_path?:                  string
		bucket!:                     string
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
	}

	#url: {
		chunk_size?:                 string
		compress?:                   bool
		http_max_retries?:           number
		http_socket_timeout?:        string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
		url!:                        string
	}
}
