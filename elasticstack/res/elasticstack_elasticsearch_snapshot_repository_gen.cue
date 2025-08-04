package res

import "list"

#elasticstack_elasticsearch_snapshot_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_snapshot_repository")
	close({
		azure?: matchN(1, [#azure, list.MaxItems(1) & [...#azure]])
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		id?:     string
		name!:   string
		verify?: bool
		fs?: matchN(1, [#fs, list.MaxItems(1) & [...#fs]])
		gcs?: matchN(1, [#gcs, list.MaxItems(1) & [...#gcs]])
		hdfs?: matchN(1, [#hdfs, list.MaxItems(1) & [...#hdfs]])
		s3?: matchN(1, [#s3, list.MaxItems(1) & [...#s3]])
		url?: matchN(1, [#url, list.MaxItems(1) & [...#url]])
	})

	#azure: close({
		base_path?:                  string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		container!:                  string
		location_mode?:              string
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
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

	#fs: close({
		chunk_size?:                 string
		compress?:                   bool
		location!:                   string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	})

	#gcs: close({
		base_path?:                  string
		bucket!:                     string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
	})

	#hdfs: close({
		chunk_size?:                 string
		compress?:                   bool
		load_defaults?:              bool
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		path!:                       string
		readonly?:                   bool
		uri!:                        string
	})

	#s3: close({
		base_path?:                  string
		bucket!:                     string
		buffer_size?:                string
		canned_acl?:                 string
		chunk_size?:                 string
		client?:                     string
		compress?:                   bool
		endpoint?:                   string
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		path_style_access?:          bool
		readonly?:                   bool
		server_side_encryption?:     bool
		storage_class?:              string
	})

	#url: close({
		chunk_size?:                 string
		compress?:                   bool
		http_max_retries?:           number
		http_socket_timeout?:        string
		max_number_of_snapshots?:    number
		max_restore_bytes_per_sec?:  string
		max_snapshot_bytes_per_sec?: string
		readonly?:                   bool
		url!:                        string
	})
}
